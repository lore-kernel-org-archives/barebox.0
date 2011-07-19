Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 1.mo4.mail-out.ovh.net ([178.33.248.196]
	helo=mo4.mail-out.ovh.net)
	by canuck.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
	id 1Qj7i9-0008G8-VT
	for barebox@lists.infradead.org; Tue, 19 Jul 2011 10:39:34 +0000
Received: from mail187.ha.ovh.net (b9.ovh.net [213.186.33.59])
	by mo4.mail-out.ovh.net (Postfix) with SMTP id D151EFF98C9
	for <barebox@lists.infradead.org>;
	Tue, 19 Jul 2011 12:40:01 +0200 (CEST)
Date: Tue, 19 Jul 2011 12:22:45 +0200
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20110719102245.GG5727@game.jcrosoft.org>
References: <AcwkMvQr2IoEFQV9To6jK9T6RQPvyABX9l1w>
	<6F2524F76379064FB8CB9CEE698D56DA8D40E67E80@IN-MSG-01.amer.actel.com>
	<CAHwEkO0EQFn+zBfKnry7R+H7g4tTiGzFLejz+n=Poj4KO47pZQ@mail.gmail.com>
	<6F2524F76379064FB8CB9CEE698D56DA8D40F7A6D6@IN-MSG-01.amer.actel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <6F2524F76379064FB8CB9CEE698D56DA8D40F7A6D6@IN-MSG-01.amer.actel.com>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
	<mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
	<mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: sandbox build failing on redhat host
To: "Murthy, Ramana" <Ramana.Murthy@microsemi.com>
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>

On 11:00 Tue 19 Jul     , Murthy, Ramana wrote:
> Hi Vikram,
> 
> 
> Here are my latest set of errors for sandbox build. PFA the config file.
> Version : barebox-2011.05.0
disable loads as it make not too much sense on sandbox anyway

> 
> commands/loads.c:114: error: `load_addr' undeclared (first use in this function)
> commands/loads.c:114: error: (Each undeclared identifier is reported only once
> commands/loads.c:114: error: for each function it appears in.)
> commands/loads.c: In function `load_serial':
> commands/loads.c:179: warning: implicit declaration of function `barebox_setenv'
> commands/loads.c:188: warning: implicit declaration of function `barebox_putc'
> commands/loads.c: In function `read_record':
> commands/loads.c:221: error: `gd' undeclared (first use in this function)
> commands/loads.c:221: error: `XF_getc' undeclared (first use in this function)
> commands/loads.c:233:6: warning: "CONFIG_COMMANDS" is not defined
> commands/loads.c:233:24: warning: "CFG_CMD_SAVES" is not defined
> commands/loads.c: At top level:
> commands/loads.c:392: error: syntax error before numeric constant
> commands/loads.c:396: warning: type defaults to `int' in declaration of `BAREBOX_CMD'
> commands/loads.c:396: warning: function declaration isn't a prototype
> commands/loads.c:396: warning: data definition has no type or storage class
> commands/loads.c:404:6: warning: "CONFIG_COMMANDS" is not defined
> commands/loads.c:404:24: warning: "CFG_CMD_SAVES" is not defined
> make[1]: *** [commands/loads.o] Error 1
> make: *** [commands] Error 2
Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
