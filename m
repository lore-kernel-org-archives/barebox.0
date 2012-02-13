Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lpp01m010-f49.google.com ([209.85.215.49])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1RwruX-0003WU-GN
 for barebox@lists.infradead.org; Mon, 13 Feb 2012 09:09:26 +0000
Received: by laam7 with SMTP id m7so4690133laa.36
 for <barebox@lists.infradead.org>; Mon, 13 Feb 2012 01:09:22 -0800 (PST)
MIME-Version: 1.0
Date: Mon, 13 Feb 2012 10:09:21 +0100
Message-ID: <CANtfVZ2NJpVLbX65u7qMv2+8n5djAzjv3YLxh8iuwc=vSccXnQ@mail.gmail.com>
From: =?ISO-8859-2?Q?Tomislav_Se=E8en?= <tomislav.secen@3plus.hr>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============1116845228683016251=="
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: LPC3250 support
To: barebox@lists.infradead.org

--===============1116845228683016251==
Content-Type: multipart/alternative; boundary=bcaec553fdfa88907a04b8d4d564

--bcaec553fdfa88907a04b8d4d564
Content-Type: text/plain; charset=ISO-8859-1

Hi all,

I was just wondering about the status of the NXP LPC3250 support in barebox.

There are two commit logs on git from Feb 2010, s.hauer adding some files:
http://uboot.jcrosoft.org/git?p=barebox.git;a=commit;h=9d4bff954fbfb94ba550b2ea3d51d9d723a413e0
http://uboot.jcrosoft.org/git?p=barebox.git;a=commitdiff;h=18be3ca3673300c8f303254c8822e5e954ad8bf0#patch1

but those files are not in the current codebase?

Was lpc3250 support dropped, and if yes why?
Are there any roadblocks to porting the lpc32xx support from u-boot?

Cheers,
Tom

--bcaec553fdfa88907a04b8d4d564
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

Hi all,<div><br></div><div>I was just wondering about the status of the NXP=
 LPC3250 support in barebox.</div><div><br></div><div>There are two commit =
logs on git from Feb 2010, s.hauer adding some files:</div><div><a href=3D"=
http://uboot.jcrosoft.org/git?p=3Dbarebox.git;a=3Dcommit;h=3D9d4bff954fbfb9=
4ba550b2ea3d51d9d723a413e0">http://uboot.jcrosoft.org/git?p=3Dbarebox.git;a=
=3Dcommit;h=3D9d4bff954fbfb94ba550b2ea3d51d9d723a413e0</a>
</div><div><a href=3D"http://uboot.jcrosoft.org/git?p=3Dbarebox.git;a=3Dcom=
mitdiff;h=3D18be3ca3673300c8f303254c8822e5e954ad8bf0#patch1">http://uboot.j=
crosoft.org/git?p=3Dbarebox.git;a=3Dcommitdiff;h=3D18be3ca3673300c8f303254c=
8822e5e954ad8bf0#patch1</a>
</div><div><br></div><div>but those files are not in the current codebase?<=
/div><div><br></div><div>Was lpc3250 support dropped, and if yes why?</div>=
<div>Are there any roadblocks to porting the lpc32xx support from u-boot?</=
div>
<div><br></div><div>Cheers,</div><div>Tom</div>

--bcaec553fdfa88907a04b8d4d564--


--===============1116845228683016251==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

--===============1116845228683016251==--
