Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 4.mo2.mail-out.ovh.net ([87.98.172.75]
 helo=mo2.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1T9Weo-0002Gx-L7
 for barebox@lists.infradead.org; Thu, 06 Sep 2012 07:37:48 +0000
Received: from mail626.ha.ovh.net (b9.ovh.net [213.186.33.59])
 by mo2.mail-out.ovh.net (Postfix) with SMTP id 4DE7ADC6A20
 for <barebox@lists.infradead.org>; Thu,  6 Sep 2012 09:43:05 +0200 (CEST)
Date: Thu, 6 Sep 2012 09:37:39 +0200
From: Eric =?ISO-8859-1?B?QuluYXJk?= <eric@eukrea.com>
Message-ID: <20120906093739.3ed5fd4b@eb-e6520>
In-Reply-To: <20120906060058.GE4761@game.jcrosoft.org>
References: <20120906060058.GE4761@game.jcrosoft.org>
Mime-Version: 1.0
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH 00/12] add PNG support
To: barebox@lists.infradead.org

Hi Jean-Christophe,

$ LANG=en grep -rn Adobe .
Binary file ./png8/600x600/while/blackbg/barebox.png matches
Binary file ./png8/600x600/color/blackbg/barebox.png matches
Binary file ./png8/400x400/white/blackbg/barebox.png matches
Binary file ./png8/400x400/color/blackbg/barebox.png matches
Binary file ./png8/900x900/white/blackbg/barebox.png matches
Binary file ./png8/900x900/color/blackbg/barebox.png matches
Binary file ./png8/100x100/white/blackbg/barebox.png matches
Binary file ./png8/100x100/color/blackbg/barebox.png matches
Binary file ./png8/800x800/white/blackbg/barebox.png matches
Binary file ./png8/800x800/color/blackbg/barebox.png matches
Binary file ./png8/200x200/white/blackbg/barebox.png matches
Binary file ./png8/200x200/color/blackbg/barebox.png matches
Binary file ./png24/600x600/while/blackbg/barebox.png matches
Binary file ./png24/600x600/while/barebox.png matches
Binary file ./png24/600x600/color/blackbg/barebox.png matches
Binary file ./png24/600x600/color/barebox.png matches
Binary file ./png24/400x400/white/blackbg/barebox.png matches
Binary file ./png24/400x400/white/barebox.png matches
Binary file ./png24/400x400/color/blackbg/barebox.png matches
Binary file ./png24/400x400/color/barebox.png matches
Binary file ./png24/900x900/white/blackbg/barebox.png matches
Binary file ./png24/900x900/white/barebox.png matches
Binary file ./png24/900x900/color/blackbg/barebox.png matches
Binary file ./png24/900x900/color/barebox.png matches
Binary file ./png24/100x100/white/blackbg/barebox.png matches
Binary file ./png24/100x100/white/barebox.png matches
Binary file ./png24/100x100/color/blackbg/barebox.png matches
Binary file ./png24/100x100/color/barebox.png matches
Binary file ./png24/800x800/white/blackbg/barebox.png matches
Binary file ./png24/800x800/white/barebox.png matches
Binary file ./png24/800x800/color/blackbg/barebox.png matches
Binary file ./png24/800x800/color/barebox.png matches
Binary file ./png24/200x200/white/blackbg/barebox.png matches
Binary file ./png24/200x200/white/barebox.png matches
Binary file ./png24/200x200/color/blackbg/barebox.png matches
Binary file ./png24/200x200/color/barebox.png matches

$ strings  ./png8/600x600/while/blackbg/barebox.png  | grep Adobe
Adobe ImageReadyq
" id="W5M0MpCehiHzreSzNTczkc9d"?> <x:xmpmeta xmlns:x="adobe:ns:meta/"
x:xmptk="Adobe XMP Core 5.0-c060 61.134777, 2010/02/12-17:32:00
"> <rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about=""
xmlns:xmpMM="http://ns.adobe.com/xap/1.0/mm/"
xmlns:stRef="http://ns.adobe.com/xap/1.0/sType/ResourceRef#"
xmlns:xmp="http://ns.adobe.com/xap/1.0/"
xmpMM:OriginalDocumentID="xmp.did:F77F117407206811920897BEAF1A9456"
xmpMM:DocumentID="xmp.did:436D3B36EFAB11E19F07FD358A90E3D4"
xmpMM:InstanceID="xmp.iid:436D3B35EFAB11E19F07FD358A90E3D4"
xmp:CreatorTool="Adobe Photoshop CS4 Macintosh"> <xmpMM:DerivedFrom
stRef:instanceID="xmp.iid:048011740720681195FEE0F8D2792B70"
stRef:documentID="xmp.did:F77F117407206811920897BEAF1A9456"/>
</rdf:Description> </rdf:RDF> </x:xmpmeta> <?xpacket end="r"?>5

Barebox being an OpenSource project, is it possible to have these
images created by a free tool and not including "Adobe Photoshop CS5
Macintosh" tags (proprietary software on a proprietary OS on a
proprietary platform ;-) ?

thanks !
Eric

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
