Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mx2.rafi.de ([178.15.151.13])
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1SJkU0-00048g-MA
 for barebox@lists.infradead.org; Mon, 16 Apr 2012 11:52:38 +0000
In-Reply-To: <20120416111108.GV30672@game.jcrosoft.org>
References: <OF62A1617C.00758B18-ONC12579E2.00369768-C12579E2.00370E2B@o0802.rafi.inhouse>
 <20120416111108.GV30672@game.jcrosoft.org>
MIME-Version: 1.0
Message-ID: <OF8CCAF0FB.FEC72171-ONC12579E2.004009D2-C12579E2.00413C07@o0802.rafi.inhouse>
From: christian.buettner@rafi.de
Date: Mon, 16 Apr 2012 13:52:33 +0200
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============5390803923702201079=="
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Antwort: Re: barebox JSON
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

Dies ist eine mehrteilige Nachricht im MIME-Format.
--===============5390803923702201079==
Content-Type: multipart/alternative; boundary="=_alternative 00413C07C12579E2_="

Dies ist eine mehrteilige Nachricht im MIME-Format.
--=_alternative 00413C07C12579E2_=
Content-Type: text/plain; charset="US-ASCII"

The advantage is a generic interface used in mass production.

I formulate my question in another way.
Is there an approach launching a little tool, that listens to UART or 
Ethernet when the bootloader starts.
The tool is kind of an dispatcher, using an incoming message to start e.g. 
an update of the kernel.

- christian



Von:    Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
An:     christian.buettner@rafi.de
Kopie:  barebox@lists.infradead.org
Datum:  16.04.2012 13:29
Betreff:        Re: barebox JSON



On 12:01 Mon 16 Apr     , christian.buettner@rafi.de wrote:
>    hi all,
> 
>    is there allready an approach to accept JSON messages through a UART 
or
>    Ethernet interface?
>    I am thinking of an update mechanism in the bootloader, beeing able 
to
>    exchange the kernel, rootfs or change env settings..
JSON no

but you can use script to do it other container

and protocol like xyzmodem /nfs and co so what is the advantage of JSON?

Best Regards,
J.
> 
>    - christian

> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox



--=_alternative 00413C07C12579E2_=
Content-Type: text/html; charset="US-ASCII"

<font size=2 face="sans-serif">The advantage is a generic interface used
in mass production.</font>
<br>
<br><font size=2 face="sans-serif">I formulate my question in another way.</font>
<br><font size=2 face="sans-serif">Is there an approach launching a little
tool, that listens to UART or Ethernet when the bootloader starts.</font>
<br><font size=2 face="sans-serif">The tool is kind of an dispatcher, using
an incoming message to start e.g. an update of the kernel.</font>
<br>
<br><font size=2 face="sans-serif">- christian</font>
<br>
<br>
<br>
<br><font size=1 color=#5f5f5f face="sans-serif">Von: &nbsp; &nbsp; &nbsp;
&nbsp;</font><font size=1 face="sans-serif">Jean-Christophe PLAGNIOL-VILLARD
&lt;plagnioj@jcrosoft.com&gt;</font>
<br><font size=1 color=#5f5f5f face="sans-serif">An: &nbsp; &nbsp; &nbsp;
&nbsp;</font><font size=1 face="sans-serif">christian.buettner@rafi.de</font>
<br><font size=1 color=#5f5f5f face="sans-serif">Kopie: &nbsp; &nbsp; &nbsp;
&nbsp;</font><font size=1 face="sans-serif">barebox@lists.infradead.org</font>
<br><font size=1 color=#5f5f5f face="sans-serif">Datum: &nbsp; &nbsp; &nbsp;
&nbsp;</font><font size=1 face="sans-serif">16.04.2012 13:29</font>
<br><font size=1 color=#5f5f5f face="sans-serif">Betreff: &nbsp; &nbsp;
&nbsp; &nbsp;</font><font size=1 face="sans-serif">Re: barebox
JSON</font>
<br>
<hr noshade>
<br>
<br>
<br><tt><font size=2>On 12:01 Mon 16 Apr &nbsp; &nbsp; , christian.buettner@rafi.de
wrote:<br>
&gt; &nbsp; &nbsp;hi all,<br>
&gt; <br>
&gt; &nbsp; &nbsp;is there allready an approach to accept JSON messages
through a UART or<br>
&gt; &nbsp; &nbsp;Ethernet interface?<br>
&gt; &nbsp; &nbsp;I am thinking of an update mechanism in the bootloader,
beeing able to<br>
&gt; &nbsp; &nbsp;exchange the kernel, rootfs or change env settings..<br>
JSON no<br>
<br>
but you can use script to do it other container<br>
<br>
and protocol like xyzmodem /nfs and co so what is the advantage of JSON?<br>
<br>
Best Regards,<br>
J.<br>
&gt; <br>
&gt; &nbsp; &nbsp;- christian<br>
<br>
&gt; _______________________________________________<br>
&gt; barebox mailing list<br>
&gt; barebox@lists.infradead.org<br>
&gt; </font></tt><a href=http://lists.infradead.org/mailman/listinfo/barebox><tt><font size=2>http://lists.infradead.org/mailman/listinfo/barebox</font></tt></a><tt><font size=2><br>
<br>
</font></tt>
<br>
--=_alternative 00413C07C12579E2_=--


--===============5390803923702201079==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

--===============5390803923702201079==--
