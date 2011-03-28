Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wy0-f177.google.com ([74.125.82.177])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1Q434z-0008OU-Kr
	for barebox@lists.infradead.org; Mon, 28 Mar 2011 03:25:23 +0000
Received: by wyb28 with SMTP id 28so2937970wyb.36
	for <barebox@lists.infradead.org>; Sun, 27 Mar 2011 20:25:18 -0700 (PDT)
MIME-Version: 1.0
Date: Mon, 28 Mar 2011 13:25:18 +1000
Message-ID: <AANLkTi=igwESq-rAMFfW7rpeT_P8V3gxgEBnG740nfie@mail.gmail.com>
From: Geoff Smith <gjsmith@vardr.com>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
	<mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
	<mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============0411045339=="
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Just how fast is barebox?
To: barebox@lists.infradead.org

--===============0411045339==
Content-Type: multipart/alternative; boundary=0016e6dd966b2e4aee049f827e9c

--0016e6dd966b2e4aee049f827e9c
Content-Type: text/plain; charset=ISO-8859-1

Apologies for the newbie question. I am looking for a fastboot option for
 the i.MX27

I want to be capturing video data from a cold start within 300ms (preferably
200ms).

I have been looking at ThreadX etc which claims start-to-application-code in
300 cycles.

Until I ran across barebox I assumed that linux could not meet the
requirement.

So, does anyone out there have measured results for barebox that gets close
to my requirement?

If barebox/linux can't do it does anybody have a recommendation for a
suitable OS on iMX27 that can (off topic I know)

Regards
Geoff


-- 
*Geoff Smith
*
*Founder and CTO*
*gjsmith@vardr.com <mark@vardr.com>*
*+61 4 1200 7354
*

--0016e6dd966b2e4aee049f827e9c
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

Apologies for the newbie question. I am looking for a fastboot option for =
=A0the i.MX27<div><br></div><div>I want to be capturing video data from a c=
old start within 300ms (preferably 200ms).</div><div><br></div><div>I have =
been looking at ThreadX etc which claims start-to-application-code in 300 c=
ycles.</div>
<div><br></div><div>Until I ran across barebox I assumed that linux could n=
ot meet the requirement.</div><div><br></div><div>So, does anyone out there=
 have measured results for barebox that gets close to my requirement?</div>
<div><br></div><div>If barebox/linux can&#39;t do it does anybody have a re=
commendation for a suitable OS on iMX27 that can (off topic I know)</div><d=
iv><br></div><div>Regards</div><div>Geoff</div><div><br clear=3D"all"><br>
-- <br><span style=3D"border-collapse:separate;color:rgb(0, 0, 0);font-fami=
ly:Helvetica;font-size:medium;font-style:normal;font-variant:normal;font-we=
ight:normal;letter-spacing:normal;line-height:normal;text-indent:0px;text-t=
ransform:none;white-space:normal;word-spacing:0px"><div style=3D"font-famil=
y:times new roman,serif">
<i><font size=3D"2">Geoff Smith<br></font></i></div><div style=3D"font-fami=
ly:times new roman,serif"><i><font size=3D"2">Founder and CTO</font></i></d=
iv><div style=3D"font-family:times new roman,serif"><i><font size=3D"2"><a =
href=3D"mailto:mark@vardr.com" target=3D"_blank">gjsmith@vardr.com</a></fon=
t></i></div>
<div style=3D"font-family:times new roman,serif"><i><font size=3D"2">+61 4 =
1200 7354<br></font></i></div><div><br></div></span><br>
</div>

--0016e6dd966b2e4aee049f827e9c--


--===============0411045339==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

--===============0411045339==--
