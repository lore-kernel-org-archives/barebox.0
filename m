Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-iy0-f177.google.com ([209.85.210.177])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SDenL-0002vl-8Q
 for barebox@lists.infradead.org; Fri, 30 Mar 2012 16:35:23 +0000
Received: by iaky10 with SMTP id y10so1477981iak.36
 for <barebox@lists.infradead.org>; Fri, 30 Mar 2012 09:35:21 -0700 (PDT)
MIME-Version: 1.0
From: Anand Gadiyar <gadiyar@gmail.com>
Date: Fri, 30 Mar 2012 22:04:59 +0530
Message-ID: <CAO-mwNcOBNL-LFuyK9EbxUBqxLU3GAWUi61E40J5qunDP+n+ZA@mail.gmail.com>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============1609360151788310587=="
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: OMAP4 Panda - MMC access broken
To: "U-Boot Version 2 (barebox)" <barebox@lists.infradead.org>

--===============1609360151788310587==
Content-Type: multipart/alternative; boundary=14dae93406453e45be04bc786daa

--14dae93406453e45be04bc786daa
Content-Type: text/plain; charset=ISO-8859-1

Hi all,

I've just started playing with barebox on OMAP4. I see that with "Release
v2011.11.0", my Panda could access the SD card contents, but with the
current release it can no longer do so.

Git bisect shows commit 82db23d3f4c1de25bbd4b222a3bd9e81d00414f8 (Use
generic block layer to access the drives and do partition parsing) is when
it stopped working.

Any pointers?

Thanks in advance,
Anand

--14dae93406453e45be04bc786daa
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

Hi all,<br><br>I&#39;ve just started playing with barebox on OMAP4. I see t=
hat with &quot;Release v2011.11.0&quot;, my Panda could access the SD card =
contents, but with the current release it can no longer do so.<br><br>Git b=
isect shows commit 82db23d3f4c1de25bbd4b222a3bd9e81d00414f8 (Use generic bl=
ock layer to access the drives and do partition parsing) is when it stopped=
 working.<br>

<br>Any pointers?<br><br>Thanks in advance,<br>Anand<br><br>

--14dae93406453e45be04bc786daa--


--===============1609360151788310587==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

--===============1609360151788310587==--
