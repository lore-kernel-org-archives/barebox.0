Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 17.mo3.mail-out.ovh.net ([87.98.178.58]
 helo=mo3.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1T9XrI-0007GB-6B
 for barebox@lists.infradead.org; Thu, 06 Sep 2012 08:54:45 +0000
Received: from mail91.ha.ovh.net (b7.ovh.net [213.186.33.57])
 by mo3.mail-out.ovh.net (Postfix) with SMTP id 89CF4FF8A1E
 for <barebox@lists.infradead.org>; Thu,  6 Sep 2012 11:02:18 +0200 (CEST)
Date: Thu, 6 Sep 2012 10:55:00 +0200
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20120906085500.GA20330@game.jcrosoft.org>
References: <20120906060058.GE4761@game.jcrosoft.org>
 <20120906093739.3ed5fd4b@eb-e6520>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20120906093739.3ed5fd4b@eb-e6520>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH 00/12] add PNG support
To: Eric =?iso-8859-1?Q?B=E9nard?= <eric@eukrea.com>
Cc: barebox@lists.infradead.org

On 09:37 Thu 06 Sep     , Eric B=E9nard wrote:
> Hi Jean-Christophe,
> =

> $ LANG=3Den grep -rn Adobe .
> Binary file ./png8/600x600/while/blackbg/barebox.png matches
> Binary file ./png8/600x600/color/blackbg/barebox.png matches
> Binary file ./png8/400x400/white/blackbg/barebox.png matches
> Binary file ./png8/400x400/color/blackbg/barebox.png matches
> Binary file ./png8/900x900/white/blackbg/barebox.png matches
> Binary file ./png8/900x900/color/blackbg/barebox.png matches
> Binary file ./png8/100x100/white/blackbg/barebox.png matches
> Binary file ./png8/100x100/color/blackbg/barebox.png matches
> Binary file ./png8/800x800/white/blackbg/barebox.png matches
> Binary file ./png8/800x800/color/blackbg/barebox.png matches
> Binary file ./png8/200x200/white/blackbg/barebox.png matches
> Binary file ./png8/200x200/color/blackbg/barebox.png matches
> Binary file ./png24/600x600/while/blackbg/barebox.png matches
> Binary file ./png24/600x600/while/barebox.png matches
> Binary file ./png24/600x600/color/blackbg/barebox.png matches
> Binary file ./png24/600x600/color/barebox.png matches
> Binary file ./png24/400x400/white/blackbg/barebox.png matches
> Binary file ./png24/400x400/white/barebox.png matches
> Binary file ./png24/400x400/color/blackbg/barebox.png matches
> Binary file ./png24/400x400/color/barebox.png matches
> Binary file ./png24/900x900/white/blackbg/barebox.png matches
> Binary file ./png24/900x900/white/barebox.png matches
> Binary file ./png24/900x900/color/blackbg/barebox.png matches
> Binary file ./png24/900x900/color/barebox.png matches
> Binary file ./png24/100x100/white/blackbg/barebox.png matches
> Binary file ./png24/100x100/white/barebox.png matches
> Binary file ./png24/100x100/color/blackbg/barebox.png matches
> Binary file ./png24/100x100/color/barebox.png matches
> Binary file ./png24/800x800/white/blackbg/barebox.png matches
> Binary file ./png24/800x800/white/barebox.png matches
> Binary file ./png24/800x800/color/blackbg/barebox.png matches
> Binary file ./png24/800x800/color/barebox.png matches
> Binary file ./png24/200x200/white/blackbg/barebox.png matches
> Binary file ./png24/200x200/white/barebox.png matches
> Binary file ./png24/200x200/color/blackbg/barebox.png matches
> Binary file ./png24/200x200/color/barebox.png matches
> =

> $ strings  ./png8/600x600/while/blackbg/barebox.png  | grep Adobe
> Adobe ImageReadyq
> " id=3D"W5M0MpCehiHzreSzNTczkc9d"?> <x:xmpmeta xmlns:x=3D"adobe:ns:meta/"
> x:xmptk=3D"Adobe XMP Core 5.0-c060 61.134777, 2010/02/12-17:32:00
> "> <rdf:RDF xmlns:rdf=3D"http://www.w3.org/1999/02/22-rdf-syntax-ns#">
> <rdf:Description rdf:about=3D""
> xmlns:xmpMM=3D"http://ns.adobe.com/xap/1.0/mm/"
> xmlns:stRef=3D"http://ns.adobe.com/xap/1.0/sType/ResourceRef#"
> xmlns:xmp=3D"http://ns.adobe.com/xap/1.0/"
> xmpMM:OriginalDocumentID=3D"xmp.did:F77F117407206811920897BEAF1A9456"
> xmpMM:DocumentID=3D"xmp.did:436D3B36EFAB11E19F07FD358A90E3D4"
> xmpMM:InstanceID=3D"xmp.iid:436D3B35EFAB11E19F07FD358A90E3D4"
> xmp:CreatorTool=3D"Adobe Photoshop CS4 Macintosh"> <xmpMM:DerivedFrom
> stRef:instanceID=3D"xmp.iid:048011740720681195FEE0F8D2792B70"
> stRef:documentID=3D"xmp.did:F77F117407206811920897BEAF1A9456"/>
> </rdf:Description> </rdf:RDF> </x:xmpmeta> <?xpacket end=3D"r"?>5
> =

> Barebox being an OpenSource project, is it possible to have these
> images created by a free tool and not including "Adobe Photoshop CS5
> Macintosh" tags (proprietary software on a proprietary OS on a
> proprietary platform ;-) ?
Sorry no The logo is not OpenSource it's copyrighted

As put in the anounced e-mail

It's free to USE without modification for the Barebox Project

I'll put a COPYRIGHT NOTICE

Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
