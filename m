Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 16.mo3.mail-out.ovh.net ([188.165.56.217]
 helo=mo3.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Vq0s7-0005Sr-Q8
 for barebox@lists.infradead.org; Mon, 09 Dec 2013 13:27:40 +0000
Received: from mail187.ha.ovh.net (b9.ovh.net [213.186.33.59])
 by mo3.mail-out.ovh.net (Postfix) with SMTP id 8620EFFA96C
 for <barebox@lists.infradead.org>; Mon,  9 Dec 2013 14:27:14 +0100 (CET)
Date: Mon, 9 Dec 2013 14:27:21 +0100
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20131209132721.GG27628@ns203013.ovh.net>
References: <1386409020-11914-1-git-send-email-eric@eukrea.com>
 <1386409020-11914-2-git-send-email-eric@eukrea.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1386409020-11914-2-git-send-email-eric@eukrea.com>
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
Subject: Re: [PATCH 2/7] at91: introduce sama5d3's SMC support
To: Eric B??nard <eric@eukrea.com>
Cc: barebox@lists.infradead.org

On 10:36 Sat 07 Dec     , Eric B??nard wrote:
> there is a new register (timings) vs SAM9 and thus a new mapping
> =

> Signed-off-by: Eric B=E9nard <eric@eukrea.com>
> ---
>  arch/arm/mach-at91/generic.h                |   7 ++
>  arch/arm/mach-at91/include/mach/sama5_smc.h | 124 +++++++++++++++++++++
>  arch/arm/mach-at91/sama5_smc.c              | 161 ++++++++++++++++++++++=
++++++
>  3 files changed, 292 insertions(+)
>  create mode 100644 arch/arm/mach-at91/include/mach/sama5_smc.h
>  create mode 100644 arch/arm/mach-at91/sama5_smc.c

nack the sama5 smc share part of the same IP as the sam9 do not duplicate c=
ode
share it

Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
