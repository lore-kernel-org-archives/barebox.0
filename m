Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mo3.mail-out.ovh.net ([178.32.228.3])
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1RiLx4-0003g0-3k
 for barebox@lists.infradead.org; Wed, 04 Jan 2012 08:12:03 +0000
Received: from mail402.ha.ovh.net (b6.ovh.net [213.186.33.56])
 by mo3.mail-out.ovh.net (Postfix) with SMTP id A238210010A3
 for <barebox@lists.infradead.org>; Wed,  4 Jan 2012 09:13:05 +0100 (CET)
Date: Wed, 4 Jan 2012 09:11:58 +0100
From: Eric =?ISO-8859-1?B?QuluYXJk?= <eric@eukrea.com>
Message-ID: <20120104091158.2b2788f8@eb-e6520>
In-Reply-To: <20120104080043.GL945@game.jcrosoft.org>
References: <1325609969-21471-3-git-send-email-eric@eukrea.com>
 <1325623931-28780-1-git-send-email-eric@eukrea.com>
 <20120104080043.GL945@game.jcrosoft.org>
Mime-Version: 1.0
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
Subject: Re: [PATCH v2 3/4] serial gadget: enable/disable on request
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

Hi Jean-Christophe,

Le Wed, 4 Jan 2012 09:00:43 +0100,
Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com> a =E9crit :

> > +/*		case 'o':
> > +			mode =3D 1;
> > +			break;*/
> ditto
> > +/*BAREBOX_CMD_HELP_OPT  ("-o",   "CDC OBEX\n")*/
> ditto

that's not an error, OBEX is currently present in serial.c but the
necessary code is not yet in barebox, so I prepared the code for OBEX
but comented it out everywhere.

Eric

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
