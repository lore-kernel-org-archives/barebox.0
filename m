Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.meprolight.com ([194.90.149.17] helo=meprolight.com)
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1T9dDO-0000Et-8Z
 for barebox@lists.infradead.org; Thu, 06 Sep 2012 14:37:55 +0000
From: Alex Gershgorin <alexg@meprolight.com>
Date: Thu, 6 Sep 2012 17:37:48 +0300
Message-ID: <4875438356E7CA4A8F2145FCD3E61C0B3074AA38F6@MEP-EXCH.meprolight.com>
References: <1346935710-23360-1-git-send-email-alexg@meprolight.com>
 <20120906152754.355b7078@eb-e6520>
 <4875438356E7CA4A8F2145FCD3E61C0B3074AA38F2@MEP-EXCH.meprolight.com>,
 <20120906155425.027ab55f@eb-e6520>,
 <4875438356E7CA4A8F2145FCD3E61C0B3074AA38F5@MEP-EXCH.meprolight.com>
In-Reply-To: <4875438356E7CA4A8F2145FCD3E61C0B3074AA38F5@MEP-EXCH.meprolight.com>
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
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: RE: [PATCH] i.mx35pdk add nand identification
To: Alex Gershgorin <alexg@meprolight.com>, =?iso-8859-1?Q?Eric_B=E9nard?= <eric@eukrea.com>
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>



________________________________________
From: Alex Gershgorin
Sent: Thursday, September 06, 2012 5:20 PM
To: Eric B=E9nard
Cc: Sascha Hauer; barebox@lists.infradead.org
Subject: RE: [PATCH] i.mx35pdk add nand identification

> > >Hi Alex,

Le Thu, 6 Sep 2012 16:39:33 +0300,
Alex Gershgorin <alexg@meprolight.com> a =E9crit :
> > Without this patch I get following messages
> >
> > Board: Freescale MX35 3Stack
> > NAND type unknown: ec,d7
> > No NAND device found (-19)!
> >
> what is the part number of the NAND ?
>
> If I'm not mistaken
>  K9LBG08U0D-PCB0
>
> > > this seems to be a 4GiB flash with 4k page + 218 OOB, not a 512MiB

Sorry my mistake in the previous mail :-(

{__NANDSTR("NAND 4GiB 3,3V 8-bit"), 0xD7, 0, 4096, 0, LP_OPTIONS}


Right?
_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
