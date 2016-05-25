<?php
namespace App\Http\Controllers;
 
use App\Member;
use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
 
 
class MemberController extends Controller{
 
 
    public function getMembers()
    { 
        $members  = Member::all(); 
        return response()->json($members); 
    }
 
    public function getMember($id)
    { 
        $member  = Member::find($id); 
        return response()->json($member);
    }
 
    public function saveMember(Request $request)
    { 
        $member = Member::create($request->all()); 
        return response()->json($member); 
    }
 
    public function deleteMember($id)
    {
        $member  = Member::find($id); 
        $member->delete(); 

        return response()->json([
            'success' => true
        ]);

    }
 
    public function updateMember(Request $request, $id)
    {
        $member  = Member::find($id); 
        $member->name = $request->input('name');
        $member->about = $request->input('about'); 
        $member->save(); 
        return response()->json($member);
    }
 
}
?>