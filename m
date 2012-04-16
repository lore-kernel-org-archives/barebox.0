Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mx2.rafi.de ([178.15.151.13])
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1SJl0h-0004vo-2u
 for barebox@lists.infradead.org; Mon, 16 Apr 2012 12:26:24 +0000
In-Reply-To: <20120416121937.GR3852@pengutronix.de>
References: <OF62A1617C.00758B18-ONC12579E2.00369768-C12579E2.00370E2B@o0802.rafi.inhouse>
 <20120416111108.GV30672@game.jcrosoft.org>
 <OF8CCAF0FB.FEC72171-ONC12579E2.004009D2-C12579E2.00413C07@o0802.rafi.inhouse>
 <20120416121937.GR3852@pengutronix.de>
MIME-Version: 1.0
Message-ID: <OFE1B60695.7A4CF434-ONC12579E2.0043DD1E-C12579E2.004453E0@o0802.rafi.inhouse>
From: christian.buettner@rafi.de
Date: Mon, 16 Apr 2012 14:26:20 +0200
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============5320281766531574744=="
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Antwort: Re: Antwort: Re: barebox JSON
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

Dies ist eine mehrteilige Nachricht im MIME-Format.
--===============5320281766531574744==
Content-Type: multipart/alternative; boundary="=_alternative 004453E0C12579E2_="

Dies ist eine mehrteilige Nachricht im MIME-Format.
--=_alternative 004453E0C12579E2_=
Content-Type: text/plain; charset="US-ASCII"

Ok, thank you anyway..
We have a plan to 'remote control' barebox.. Would have been good, if i 
wasn't the first doing this ;)

- christian



Von:    Sascha Hauer <s.hauer@pengutronix.de>
An:     christian.buettner@rafi.de
Kopie:  Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>, 
barebox@lists.infradead.org
Datum:  16.04.2012 14:19
Betreff:        Re: Antwort: Re: barebox JSON



On Mon, Apr 16, 2012 at 01:52:33PM +0200, christian.buettner@rafi.de 
wrote:
> The advantage is a generic interface used in mass production.
> 
> I formulate my question in another way.
> Is there an approach launching a little tool, that listens to UART or 
> Ethernet when the bootloader starts.
> The tool is kind of an dispatcher, using an incoming message to start 
e.g. 
> an update of the kernel.

Well we have UART console and network console, you can use something
like kermit or expect to remote control barebox.

I know this sucks and is not what you wanted to hear, but currently this
is all we have.

I more than once thought about a real machine interface to barebox, but
I have no good idea how to do this.

Sascha

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


--=_alternative 004453E0C12579E2_=
Content-Type: text/html; charset="US-ASCII"

<font size=2 face="sans-serif">Ok, thank you anyway..</font>
<br><font size=2 face="sans-serif">We have a plan to 'remote control' barebox..
Would have been good, if i wasn't the first doing this ;)</font>
<br>
<br><font size=2 face="sans-serif">- christian</font>
<br>
<br>
<br>
<br><font size=1 color=#5f5f5f face="sans-serif">Von: &nbsp; &nbsp; &nbsp;
&nbsp;</font><font size=1 face="sans-serif">Sascha Hauer &lt;s.hauer@pengutronix.de&gt;</font>
<br><font size=1 color=#5f5f5f face="sans-serif">An: &nbsp; &nbsp; &nbsp;
&nbsp;</font><font size=1 face="sans-serif">christian.buettner@rafi.de</font>
<br><font size=1 color=#5f5f5f face="sans-serif">Kopie: &nbsp; &nbsp; &nbsp;
&nbsp;</font><font size=1 face="sans-serif">Jean-Christophe PLAGNIOL-VILLARD
&lt;plagnioj@jcrosoft.com&gt;, barebox@lists.infradead.org</font>
<br><font size=1 color=#5f5f5f face="sans-serif">Datum: &nbsp; &nbsp; &nbsp;
&nbsp;</font><font size=1 face="sans-serif">16.04.2012 14:19</font>
<br><font size=1 color=#5f5f5f face="sans-serif">Betreff: &nbsp; &nbsp;
&nbsp; &nbsp;</font><font size=1 face="sans-serif">Re: Antwort:
Re: barebox JSON</font>
<br>
<hr noshade>
<br>
<br>
<br><tt><font size=2>On Mon, Apr 16, 2012 at 01:52:33PM +0200, christian.buettner@rafi.de
wrote:<br>
&gt; The advantage is a generic interface used in mass production.<br>
&gt; <br>
&gt; I formulate my question in another way.<br>
&gt; Is there an approach launching a little tool, that listens to UART
or <br>
&gt; Ethernet when the bootloader starts.<br>
&gt; The tool is kind of an dispatcher, using an incoming message to start
e.g. <br>
&gt; an update of the kernel.<br>
<br>
Well we have UART console and network console, you can use something<br>
like kermit or expect to remote control barebox.<br>
<br>
I know this sucks and is not what you wanted to hear, but currently this<br>
is all we have.<br>
<br>
I more than once thought about a real machine interface to barebox, but<br>
I have no good idea how to do this.<br>
<br>
Sascha<br>
<br>
-- <br>
Pengutronix e.K. &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; | &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; |<br>
Industrial Linux Solutions &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
&nbsp; | </font></tt><a href=http://www.pengutronix.de/><tt><font size=2>http://www.pengutronix.de/</font></tt></a><tt><font size=2>
&nbsp;|<br>
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0 &nbsp;
&nbsp;|<br>
Amtsgericht Hildesheim, HRA 2686 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; | Fax:
&nbsp; +49-5121-206917-5555 |<br>
</font></tt>
<br>
--=_alternative 004453E0C12579E2_=--


--===============5320281766531574744==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

--===============5320281766531574744==--
