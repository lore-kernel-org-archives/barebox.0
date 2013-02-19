Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 18.mo4.mail-out.ovh.net ([188.165.54.143]
 helo=mo4.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1U7pFW-0007hz-BV
 for barebox@lists.infradead.org; Tue, 19 Feb 2013 15:36:55 +0000
Received: from mail643.ha.ovh.net (b9.ovh.net [213.186.33.59])
 by mo4.mail-out.ovh.net (Postfix) with SMTP id 974701050151
 for <barebox@lists.infradead.org>; Tue, 19 Feb 2013 16:47:28 +0100 (CET)
Date: Tue, 19 Feb 2013 16:35:48 +0100
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20130219153548.GM19322@game.jcrosoft.org>
References: <20130214193135.GA1906@pengutronix.de>
 <1361265445-11731-1-git-send-email-eric@eukrea.com>
 <20130219115843.GL19322@game.jcrosoft.org>
 <20130219144156.7754d3de@e6520eb>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20130219144156.7754d3de@e6520eb>
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
Cc: barebox@lists.infradead.org, Juergen Beisert <jbe@pengutronix.de>

On 14:41 Tue 19 Feb     , Eric B=E9nard wrote:
> Le Tue, 19 Feb 2013 12:58:43 +0100,
> Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com> a =E9crit :
> =

> > On 10:17 Tue 19 Feb     , Eric B=E9nard wrote:
> > > +int envfs_register_partition(const char *devname, unsigned int partn=
r)
> > a part can be a number or a name
> > =

> do you have an example please ?
EFI GPT

Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
