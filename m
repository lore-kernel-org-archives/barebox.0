Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from nm7.bullet.mail.ird.yahoo.com ([77.238.189.21])
 by merlin.infradead.org with smtp (Exim 4.76 #1 (Red Hat Linux))
 id 1T8oDr-0007Ys-HV
 for barebox@lists.infradead.org; Tue, 04 Sep 2012 08:11:00 +0000
Message-ID: <1346746256.33068.YahooMailNeo@web133201.mail.ir2.yahoo.com>
Date: Tue, 4 Sep 2012 09:10:56 +0100 (BST)
From: Aurelien Bouin <a_bouin@yahoo.fr>
MIME-Version: 1.0
Reply-To: Aurelien Bouin <a_bouin@yahoo.fr>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============2858876593914371733=="
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: iMX27 board : Barebox & linux 2.6.24.6 => reboot the board randomly
 ...
To: "barebox@lists.infradead.org" <barebox@lists.infradead.org>

--===============2858876593914371733==
Content-Type: multipart/alternative; boundary="1982344905-74783318-1346746256=:33068"

--1982344905-74783318-1346746256=:33068
Content-Type: text/plain; charset=iso-8859-1
Content-Transfer-Encoding: quoted-printable

Hello,=0A=0AI am currently porting Barebox instead of UBoot to an old kerne=
l linux 2.6.24.6 on an iMX27 board.=0ASpeaking of Barebox everything is goi=
ng well and seems to work correctly : USB, I2C, Network, etc ...=0AThe prob=
lem is that the processor halt and sometime reboot ... but it can occur at =
anytime randomly ...=A0=0AI was looking on the Chip Errata of this processo=
r, apparently there is a problem of improper duty cycle that have to be han=
dled ...=A0=0AI am following some Barebox implementation of mx27 that handl=
e this chip errata (arch/arm/boards/eukrea_cpuimx27;guf-neso;phycard-iMX27)=
It do not=A0happen=A0with UBoot with the kernel 2.6.24.6, neither with bare=
box and the kernel 3.2.0 ...=0AI am using the master branch of the git repo=
sitory. I cannot upgrade my old linux 2.6.24 because of video support not h=
andle.=0A=0AIf you have any idea of what could be the problem ...=0AThank y=
ou for your time and your support,=0ABest regards,=0A=0AAurelien BOUIN
--1982344905-74783318-1346746256=:33068
Content-Type: text/html; charset=iso-8859-1
Content-Transfer-Encoding: quoted-printable

<html><body><div style=3D"color:#000; background-color:#fff; font-family:ti=
mes new roman, new york, times, serif;font-size:12pt"><div style=3D"font-fa=
mily: 'times new roman', 'new york', times, serif; font-size: 12pt; ">Hello=
,</div><div style=3D"font-family: 'times new roman', 'new york', times, ser=
if; font-size: 12pt; "><br></div><div style=3D"font-family: 'times new roma=
n', 'new york', times, serif; font-size: 16px; color: rgb(0, 0, 0); backgro=
und-color: transparent; font-style: normal; ">I am currently porting Barebo=
x instead of UBoot to an old kernel linux 2.6.24.6 on an iMX27 board.</div>=
<div style=3D"font-family: 'times new roman', 'new york', times, serif; fon=
t-size: 16px; color: rgb(0, 0, 0); background-color: transparent; font-styl=
e: normal; ">Speaking of Barebox everything is going well and seems to work=
 correctly : USB, I2C, Network, etc ...</div><div style=3D"font-family: 'ti=
mes new roman', 'new york', times, serif; font-size: 16px; color: rgb(0, 0,=
 0);
 background-color: transparent; font-style: normal; ">The problem is that t=
he processor halt and sometime reboot ... but it can occur at anytime rando=
mly ...&nbsp;</div><div style=3D"background-color: transparent; color: rgb(=
0, 0, 0); font-size: 16px; font-family: 'times new roman', 'new york', time=
s, serif; font-style: normal; "><font face=3D"times new roman, new york, ti=
mes, serif">I was looking on the Chip Errata of this processor, apparently =
there is a problem of improper duty cycle that have to be handled ...&nbsp;=
</font></div><div style=3D"background-color: transparent; color: rgb(0, 0, =
0); font-size: 16px; font-family: 'times new roman', 'new york', times, ser=
if; font-style: normal; "><font face=3D"times new roman, new york, times, s=
erif">I am following some Barebox implementation of mx27 that handle this c=
hip errata (arch/arm/boards/eukrea_cpuimx27;guf-neso;phycard-iMX27)</font><=
/div><span style=3D"font-family: 'times new roman', 'new york', times, seri=
f;
 ">It do not&nbsp;</span><span style=3D"font-family: 'times new roman', 'ne=
w york', times, serif; ">happen</span><span style=3D"font-family: 'times ne=
w roman', 'new york', times, serif; ">&nbsp;with UBoot with the kernel 2.6.=
24.6, neither with barebox and the kernel 3.2.0 ...</span><div><div><font f=
ace=3D"times new roman, new york, times, serif">I am using the master branc=
h of the git repository. I cannot upgrade my old linux 2.6.24 because of vi=
deo support not handle.<br></font><div style=3D"background-color: transpare=
nt; color: rgb(0, 0, 0); font-size: 16px; font-family: 'times new roman', '=
new york', times, serif; font-style: normal; "><font face=3D"times new roma=
n, new york, times, serif">If you have any idea of what could be the proble=
m ...</font></div><div style=3D"background-color: transparent; color: rgb(0=
, 0, 0); font-size: 16px; font-family: 'times new roman', 'new york', times=
, serif; font-style: normal; "><font face=3D"times new roman, new york, tim=
es,
 serif">Thank you for your time and your support,</font></div><div style=3D=
"background-color: transparent; color: rgb(0, 0, 0); font-size: 16px; font-=
family: 'times new roman', 'new york', times, serif; font-style: normal; ">=
Best regards,</div><div style=3D"background-color: transparent; color: rgb(=
0, 0, 0); font-size: 16px; font-family: 'times new roman', 'new york', time=
s, serif; font-style: normal; "><font face=3D"times new roman, new york, ti=
mes, serif"><br></font></div><div style=3D"background-color: transparent; c=
olor: rgb(0, 0, 0); font-size: 16px; font-family: 'times new roman', 'new y=
ork', times, serif; font-style: normal; "><font face=3D"times new roman, ne=
w york, times, serif">Aurelien BOUIN</font></div></div></div></div></body><=
/html>
--1982344905-74783318-1346746256=:33068--


--===============2858876593914371733==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

--===============2858876593914371733==--
