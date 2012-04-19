Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mx2.rafi.de ([178.15.151.13])
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1SKp5i-00054b-N8
 for barebox@lists.infradead.org; Thu, 19 Apr 2012 11:00:03 +0000
In-Reply-To: <20120416121937.GR3852@pengutronix.de>
References: <OF62A1617C.00758B18-ONC12579E2.00369768-C12579E2.00370E2B@o0802.rafi.inhouse>
 <20120416111108.GV30672@game.jcrosoft.org>
 <OF8CCAF0FB.FEC72171-ONC12579E2.004009D2-C12579E2.00413C07@o0802.rafi.inhouse>
 <20120416121937.GR3852@pengutronix.de>
MIME-Version: 1.0
Message-ID: <OF48823994.EC18384B-ONC12579E5.003B9CFE-C12579E5.003C6962@o0802.rafi.inhouse>
From: christian.buettner@rafi.de
Date: Thu, 19 Apr 2012 12:59:51 +0200
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============8911026533783222497=="
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Antwort: Re: Antwort: Re: barebox JSON
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

Dies ist eine mehrteilige Nachricht im MIME-Format.
--===============8911026533783222497==
Content-Type: multipart/alternative; boundary="=_alternative 003C695FC12579E5_="

Dies ist eine mehrteilige Nachricht im MIME-Format.
--=_alternative 003C695FC12579E5_=
Content-Type: text/plain; charset="US-ASCII"

Thx,
Is there an example code to accept a message through ethernet with 
'network console'
and call another tool, defined by the incoming message, through expect or 
kermit (depends what fits better).
I am new to programming with linux..

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


--=_alternative 003C695FC12579E5_=
Content-Type: text/html; charset="US-ASCII"

<font size=2 face="sans-serif">Thx,</font>
<br><font size=2 face="sans-serif">Is there an example code to accept a
message through ethernet with 'network console'</font>
<br><font size=2 face="sans-serif">and call another tool, defined by the
incoming message, through expect or kermit (depends what fits better).</font>
<br><font size=2 face="sans-serif">I am new to programming with linux..</font>
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
--=_alternative 003C695FC12579E5_=--


--===============8911026533783222497==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

--===============8911026533783222497==--
