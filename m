Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 18.mo4.mail-out.ovh.net ([188.165.54.143]
	helo=mo4.mail-out.ovh.net)
	by canuck.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
	id 1QjOpK-0004fU-8h
	for barebox@lists.infradead.org; Wed, 20 Jul 2011 04:56:06 +0000
Received: from mail187.ha.ovh.net (b9.ovh.net [213.186.33.59])
	by mo4.mail-out.ovh.net (Postfix) with SMTP id 1C424FFA15E
	for <barebox@lists.infradead.org>;
	Wed, 20 Jul 2011 06:56:36 +0200 (CEST)
Date: Wed, 20 Jul 2011 06:39:13 +0200
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20110720043913.GF15388@game.jcrosoft.org>
References: <AcwkMvQr2IoEFQV9To6jK9T6RQPvyABX9l1w>
	<6F2524F76379064FB8CB9CEE698D56DA8D40E67E80@IN-MSG-01.amer.actel.com>
	<CAHwEkO0EQFn+zBfKnry7R+H7g4tTiGzFLejz+n=Poj4KO47pZQ@mail.gmail.com>
	<6F2524F76379064FB8CB9CEE698D56DA8D40F7A6D6@IN-MSG-01.amer.actel.com>
	<20110719102245.GG5727@game.jcrosoft.org>
	<6F2524F76379064FB8CB9CEE698D56DA8D40F7A80D@IN-MSG-01.amer.actel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <6F2524F76379064FB8CB9CEE698D56DA8D40F7A80D@IN-MSG-01.amer.actel.com>
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

On 16:23 Tue 19 Jul     , Murthy, Ramana wrote:
> Hi,
> 
> I have tried this.
> But it seems the loader needs loads enabled.
> 
> /usr/bin/ld:arch/sandbox/board//barebox.lds:77: syntax error
> collect2: ld returned 1 exit status
> make: *** [barebox] Error 1
> 
> Line 77 in arch/sandbox/board//barebox.lds is  __barebox_cmd : { KEEP(*(SORT_BY_NAME(.barebox_cmd*))) }
I don't known what you did but
make O=build/sandbox -j9 -s sandbox_defconfig
make O=build/sandbox -j9 -s

work fine

Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
