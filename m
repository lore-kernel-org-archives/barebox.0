Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mx2.rafi.de ([178.15.151.13])
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1SRLS6-00039l-MA
 for barebox@lists.infradead.org; Mon, 07 May 2012 10:46:03 +0000
In-Reply-To: <20120507095032.GA27341@pengutronix.de>
References: <OF1B77598C.D26552F3-ONC12579F7.0033D84B-C12579F7.0034098E@o0802.rafi.inhouse>
 <20120507095032.GA27341@pengutronix.de>
MIME-Version: 1.0
Message-ID: <OFD0FFDBEE.D1D1B52B-ONC12579F7.003A6D09-C12579F7.003B1F22@o0802.rafi.inhouse>
From: christian.buettner@rafi.de
Date: Mon, 7 May 2012 12:46:00 +0200
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============4655337381067292632=="
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Antwort: Re: string processing
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

Dies ist eine mehrteilige Nachricht im MIME-Format.
--===============4655337381067292632==
Content-Type: multipart/alternative; boundary="=_alternative 003B1F21C12579F7_="

Dies ist eine mehrteilige Nachricht im MIME-Format.
--=_alternative 003B1F21C12579F7_=
Content-Type: text/plain; charset="US-ASCII"

Ok thx.
How about scanf variations? sscanf would fit best :)

How can i proceed adding those missing functions? Copy Paste from glibc?

- christian



Von:    Sascha Hauer <s.hauer@pengutronix.de>
An:     christian.buettner@rafi.de
Kopie:  barebox@lists.infradead.org
Datum:  07.05.2012 11:50
Betreff:        Re: string processing



On Mon, May 07, 2012 at 11:28:38AM +0200, christian.buettner@rafi.de 
wrote:
> hi all,
> 
> i was looking for c functions doing string processing. I cannot find 
> things like sscanf or atoi. 
> How do you work with strings when you implement custom commands?

We have simple_strtoul which currently is the only function to help with
string to integer conversion.

Sascha

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


--=_alternative 003B1F21C12579F7_=
Content-Type: text/html; charset="US-ASCII"

<font size=2 face="sans-serif">Ok thx.</font>
<br><font size=2 face="sans-serif">How about scanf variations? sscanf would
fit best :)</font>
<br>
<br><font size=2 face="sans-serif">How can i proceed adding those missing
functions? Copy Paste from glibc?</font>
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
&nbsp;</font><font size=1 face="sans-serif">barebox@lists.infradead.org</font>
<br><font size=1 color=#5f5f5f face="sans-serif">Datum: &nbsp; &nbsp; &nbsp;
&nbsp;</font><font size=1 face="sans-serif">07.05.2012 11:50</font>
<br><font size=1 color=#5f5f5f face="sans-serif">Betreff: &nbsp; &nbsp;
&nbsp; &nbsp;</font><font size=1 face="sans-serif">Re: string processing</font>
<br>
<hr noshade>
<br>
<br>
<br><tt><font size=2>On Mon, May 07, 2012 at 11:28:38AM +0200, christian.buettner@rafi.de
wrote:<br>
&gt; hi all,<br>
&gt; <br>
&gt; i was looking for c functions doing string processing. I cannot find
<br>
&gt; things like sscanf or atoi. <br>
&gt; How do you work with strings when you implement custom commands?<br>
<br>
We have simple_strtoul which currently is the only function to help with<br>
string to integer conversion.<br>
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
--=_alternative 003B1F21C12579F7_=--


--===============4655337381067292632==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

--===============4655337381067292632==--
