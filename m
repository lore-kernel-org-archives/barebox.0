Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 16.mo3.mail-out.ovh.net ([188.165.56.217]
 helo=mo3.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1U8UDP-0004ce-Dc
 for barebox@lists.infradead.org; Thu, 21 Feb 2013 11:21:28 +0000
Received: from mail437.ha.ovh.net (gw6.ovh.net [213.251.189.206])
 by mo3.mail-out.ovh.net (Postfix) with SMTP id CA4D3FF97BD
 for <barebox@lists.infradead.org>; Thu, 21 Feb 2013 12:36:25 +0100 (CET)
Date: Thu, 21 Feb 2013 12:20:18 +0100
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20130221112018.GC5291@game.jcrosoft.org>
References: <20130214193135.GA1906@pengutronix.de>
 <1361265445-11731-1-git-send-email-eric@eukrea.com>
 <20130219115843.GL19322@game.jcrosoft.org>
 <20130219144156.7754d3de@e6520eb>
 <20130219153548.GM19322@game.jcrosoft.org>
 <20130219164941.7a630578@e6520eb> <20130219165740.38f4fc06@e6520eb>
 <20130219192112.GN19322@game.jcrosoft.org>
 <20130221075512.1e795e77@e6520eb>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20130221075512.1e795e77@e6520eb>
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
Subject: Re: [PATCH v4 1/3] env: add register_persistent_environment
To: Eric =?iso-8859-1?Q?B=E9nard?= <eric@eukrea.com>
Cc: barebox@lists.infradead.org

On 07:55 Thu 21 Feb     , Eric B=E9nard wrote:
> Le Tue, 19 Feb 2013 20:21:12 +0100,
> Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com> a =E9crit :
> =

> > On 16:57 Tue 19 Feb     , Eric B=E9nard wrote:
> > > Le Tue, 19 Feb 2013 16:49:41 +0100,
> > > Eric B=E9nard <eric@eukrea.com> a =E9crit :
> > > =

> > > > Le Tue, 19 Feb 2013 16:35:48 +0100,
> > > > Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com> a =E9crit :
> > > > =

> > > > > On 14:41 Tue 19 Feb     , Eric B=E9nard wrote:
> > > > > > Le Tue, 19 Feb 2013 12:58:43 +0100,
> > > > > > Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com> a =E9c=
rit :
> > > > > > =

> > > > > > > On 10:17 Tue 19 Feb     , Eric B=E9nard wrote:
> > > > > > > > +int envfs_register_partition(const char *devname, unsigned=
 int partnr)
> > > > > > > a part can be a number or a name
> > > > > > > =

> > > > > > do you have an example please ?
> > > > > EFI GPT
> > > > > =

> > > > is that present in mailine ?
> > > > =

> > > OK found it in next.
> > > =

> > > Handling that will lead to strange behaviour when someone will name "=
1"
> > > the ata0.0's partition ;-)
> > so this will faill
> > =

> > don't people enough stupid to name their partition 1 deserve to have is=
sues
> > =

> end users's creativity has no limits ;-)
so they will have no limits issues

Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
