Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from comal.ext.ti.com ([198.47.26.152])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1RuolC-0004fo-R1
 for barebox@lists.infradead.org; Tue, 07 Feb 2012 17:23:19 +0000
Received: from dbdp20.itg.ti.com ([172.24.170.38])
 by comal.ext.ti.com (8.13.7/8.13.7) with ESMTP id q17HNFWo031313
 for <barebox@lists.infradead.org>; Tue, 7 Feb 2012 11:23:16 -0600
Received: from DBDE70.ent.ti.com (localhost [127.0.0.1])
 by dbdp20.itg.ti.com (8.13.8/8.13.8) with ESMTP id q17HNEgY014027
 for <barebox@lists.infradead.org>; Tue, 7 Feb 2012 22:53:14 +0530 (IST)
From: "Premi, Sanjeev" <premi@ti.com>
Date: Tue, 7 Feb 2012 17:23:13 +0000
Message-ID: <E28AAFD00EFAA646AE3DF9B89CD24A8931834527@DBDE01.ent.ti.com>
Content-Language: en-US
MIME-Version: 1.0
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============0459177664370927602=="
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: An observation with omap_xload
To: "barebox@lists.infradead.org" <barebox@lists.infradead.org>

--===============0459177664370927602==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_E28AAFD00EFAA646AE3DF9B89CD24A8931834527DBDE01entticom_"

--_000_E28AAFD00EFAA646AE3DF9B89CD24A8931834527DBDE01entticom_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Yesterday, i spent quite sometime dealing with 'MLO', unable to find
'barebox.bin'. The failure was always:

barebox 2012.01.0ABC-00248-g9119228-dirty (Feb  7 2012 - 16:39:43)

Board: Texas Instrument's OMAP3EVM
Malloc space: 0x87bfff10 -> 0x87ffff0f (size  4 MB)
Stack space : 0x4020f000 -> 0x4020fc00 (size  3 kB)
booting from MMC1
mounting sd card failed with -22
booting failed

Since, I was working mostly off the windows machine, i didn't
realize that SD card had only one partition and mount would
fail as we explicitly mount "disk0.0" in omap_xload_boot_mmc().

Unfortunately, trying to mount "disk0" didn't help and I got
same error. Haven't debugged this further though.

Also, would it make sense to try mounting "disk0.0" and "disk0"
before returning failure?

I am anyways planning to submit a patch changing the message:
  mounting sd card failed with -22
to
  Unable to mount disk0.0 (-22)

~sanjeev


--_000_E28AAFD00EFAA646AE3DF9B89CD24A8931834527DBDE01entticom_
Content-Type: text/html; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dus-ascii"=
>
<meta content=3D"MSHTML 6.00.6000.17104" name=3D"GENERATOR">
</head>
<body>
<div><font face=3D"Courier New" size=3D"2"><span class=3D"129040817-0702201=
2">Yesterday, i spent quite sometime dealing with 'MLO',
</span></font><font face=3D"Courier New" size=3D"2"><span class=3D"12904081=
7-07022012">unable to find</span></font></div>
<div><font face=3D"Courier New" size=3D"2"><span class=3D"129040817-0702201=
2">'barebox.bin'. The failure was always:</span></font></div>
<div><font face=3D"Courier New" size=3D"2"><span class=3D"129040817-0702201=
2"></span></font>&nbsp;</div>
<div><font face=3D"Courier New" size=3D"2"><span class=3D"129040817-0702201=
2">barebox 2012.01.0ABC-00248-g9119228-dirty (Feb&nbsp; 7 2012 - 16:39:43)<=
/span></font></div>
<div><font face=3D"Courier New" size=3D"2"></font>&nbsp;</div>
<div><font face=3D"Courier New" size=3D"2"><span class=3D"129040817-0702201=
2">Board: Texas Instrument's OMAP3EVM<br>
Malloc space: 0x87bfff10 -&gt; 0x87ffff0f (size&nbsp; 4 MB)<br>
Stack space : 0x4020f000 -&gt; 0x4020fc00 (size&nbsp; 3 kB)<br>
booting from MMC1<br>
mounting sd card failed with -22<br>
booting failed</span></font></div>
<div><font face=3D"Courier New" size=3D"2"></font>&nbsp;</div>
<div><font face=3D"Courier New" size=3D"2"><span class=3D"129040817-0702201=
2">Since, I was working mostly off the windows machine, i didn't</span></fo=
nt></div>
<div><font face=3D"Courier New" size=3D"2"><span class=3D"129040817-0702201=
2">realize that SD card had only one partition and mount would</span></font=
></div>
<div><font face=3D"Courier New" size=3D"2"><span class=3D"129040817-0702201=
2">fail as we explicitly mount &quot;disk0.0&quot; in omap_xload_boot_mmc()=
.</span></font></div>
<div><font face=3D"Courier New" size=3D"2"><span class=3D"129040817-0702201=
2"></span></font>&nbsp;</div>
<div><font face=3D"Courier New" size=3D"2"><span class=3D"129040817-0702201=
2">Unfortunately, trying to mount &quot;disk0&quot; didn't help and I got</=
span></font></div>
<div><font face=3D"Courier New" size=3D"2"><span class=3D"129040817-0702201=
2">same error. Haven't debugged this further though.</span></font></div>
<div><font face=3D"Courier New" size=3D"2"><span class=3D"129040817-0702201=
2"></span></font>&nbsp;</div>
<div><font face=3D"Courier New" size=3D"2"><span class=3D"129040817-0702201=
2">Also, would it make sense to try mounting &quot;disk0.0&quot; and &quot;=
disk0&quot;</span></font></div>
<div><font face=3D"Courier New" size=3D"2"><span class=3D"129040817-0702201=
2">before returning failure?</span></font></div>
<div><font face=3D"Courier New" size=3D"2"><span class=3D"129040817-0702201=
2"></span></font>&nbsp;</div>
<div><font face=3D"Courier New" size=3D"2"><span class=3D"129040817-0702201=
2">I&nbsp;am anyways planning to submit a patch changing the&nbsp;message:<=
/span></font></div>
<div><font face=3D"Courier New" size=3D"2"><span class=3D"129040817-0702201=
2">&nbsp; mounting sd card failed with -22<br>
to</span></font></div>
<div><font face=3D"Courier New" size=3D"2"><span class=3D"129040817-0702201=
2">&nbsp; Unable to mount disk0.0 (-22)</span></font></div>
<div><font face=3D"Courier New" size=3D"2"><span class=3D"129040817-0702201=
2"></span></font>&nbsp;</div>
<div><font face=3D"Courier New" size=3D"2"><span class=3D"129040817-0702201=
2">~sanjeev</span></font></div>
<div><font face=3D"Courier New" size=3D"2"><span class=3D"129040817-0702201=
2"></span></font>&nbsp;</div>
</body>
</html>

--_000_E28AAFD00EFAA646AE3DF9B89CD24A8931834527DBDE01entticom_--


--===============0459177664370927602==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

--===============0459177664370927602==--
