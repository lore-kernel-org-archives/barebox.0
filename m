Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from plexus-g.actel.com ([12.177.68.99])
	by canuck.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
	id 1Qj7vP-0008LI-Jj
	for barebox@lists.infradead.org; Tue, 19 Jul 2011 10:53:19 +0000
From: "Murthy, Ramana" <Ramana.Murthy@microsemi.com>
Date: Tue, 19 Jul 2011 16:23:02 +0530
Message-ID: <6F2524F76379064FB8CB9CEE698D56DA8D40F7A80D@IN-MSG-01.amer.actel.com>
References: <AcwkMvQr2IoEFQV9To6jK9T6RQPvyABX9l1w>
	<6F2524F76379064FB8CB9CEE698D56DA8D40E67E80@IN-MSG-01.amer.actel.com>
	<CAHwEkO0EQFn+zBfKnry7R+H7g4tTiGzFLejz+n=Poj4KO47pZQ@mail.gmail.com>
	<6F2524F76379064FB8CB9CEE698D56DA8D40F7A6D6@IN-MSG-01.amer.actel.com>
	<20110719102245.GG5727@game.jcrosoft.org>
In-Reply-To: <20110719102245.GG5727@game.jcrosoft.org>
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: RE: sandbox build failing on redhat host
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>

Hi,

I have tried this.
But it seems the loader needs loads enabled.

/usr/bin/ld:arch/sandbox/board//barebox.lds:77: syntax error
collect2: ld returned 1 exit status
make: *** [barebox] Error 1

Line 77 in arch/sandbox/board//barebox.lds is  __barebox_cmd : { KEEP(*(SORT_BY_NAME(.barebox_cmd*))) }

Best Regards,
N.S.S.R.Murthy,


-----Original Message-----
From: Jean-Christophe PLAGNIOL-VILLARD [mailto:plagnioj@jcrosoft.com]
Sent: Tuesday, July 19, 2011 3:53 PM
To: Murthy, Ramana
Cc: Vikram Narayanan; barebox@lists.infradead.org
Subject: Re: sandbox build failing on redhat host

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



The information contained in or attached to this email may be subject to the Export Administration Regulations (EAR), administered by the U.S. Department of Commerce, or the International Traffic in Arms Regulations (ITAR), administered by the U.S. Department of State, and may require an export license from the Commerce or State Department prior to its export.  An export can include a release or disclosure to a foreign national inside or outside the United States.  Include this notice with any reproduced portion of this information.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
