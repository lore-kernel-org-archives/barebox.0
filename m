Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 11.mo4.mail-out.ovh.net ([46.105.34.195]
 helo=mo4.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Ua9S1-0000LQ-Fp
 for barebox@lists.infradead.org; Wed, 08 May 2013 18:50:54 +0000
Received: from mail187.ha.ovh.net (b9.ovh.net [213.186.33.59])
 by mo4.mail-out.ovh.net (Postfix) with SMTP id 1209D104E2E3
 for <barebox@lists.infradead.org>; Wed,  8 May 2013 20:50:30 +0200 (CEST)
Mime-Version: 1.0 (Mac OS X Mail 6.3 \(1503\))
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
In-Reply-To: <20130508202003.3499c5a9@e6520eb>
Date: Thu, 9 May 2013 02:50:23 +0800
Message-Id: <37ABC944-893A-4BF1-B223-6B0C060A81C1@jcrosoft.com>
References: <1368034748-15462-1-git-send-email-eric@eukrea.com>
 <20130508174541.GA16240@game.jcrosoft.org> <20130508202003.3499c5a9@e6520eb>
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
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH v3] nand_base: sync flash detection functions with linux
 3.9's code
To: =?iso-8859-1?Q?Eric_B=E9nard?= <eric@eukrea.com>
Cc: barebox@lists.infradead.org


On May 9, 2013, at 2:20 AM, Eric B=E9nard <eric@eukrea.com> wrote:

> Le Wed, 8 May 2013 19:45:41 +0200,
> Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com> a =E9crit :
> =

>> one small issue
>> =

>> /opt/work/barebox/drivers/mtd/nand/nand_base.c: In function 'nand_get_fl=
ash_type':
>> /opt/work/barebox/drivers/mtd/nand/nand_base.c:1383:6: warning: unused v=
ariable 'ret'
>> =

>> otherwise it work
>> =

> OK t
> hanks. I'll test on several platforms when I'm back at the office
> and send a final version.
> =


yes this is need to be tested carefully this time

> Eric


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
