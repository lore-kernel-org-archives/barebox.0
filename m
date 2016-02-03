Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-ig0-x243.google.com ([2607:f8b0:4001:c05::243])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1aR2yq-0006SO-Qh
 for barebox@lists.infradead.org; Wed, 03 Feb 2016 19:20:45 +0000
Received: by mail-ig0-x243.google.com with SMTP id hb3so631682igb.0
 for <barebox@lists.infradead.org>; Wed, 03 Feb 2016 11:20:24 -0800 (PST)
MIME-Version: 1.0
In-Reply-To: <20160203073420.GG4118@pengutronix.de>
References: <1454296213-12734-1-git-send-email-andrew.smirnov@gmail.com>
 <1454296213-12734-9-git-send-email-andrew.smirnov@gmail.com>
 <20160201093519.GP13058@pengutronix.de>
 <CAHQ1cqGxkLm8axj4TGH4=NnyLjj-HupmD_5Df-tpMgAFsMN9Ug@mail.gmail.com>
 <20160203073420.GG4118@pengutronix.de>
Date: Wed, 3 Feb 2016 11:20:23 -0800
Message-ID: <CAHQ1cqFFwJp2qJku13YYtR=iT5vtdUPcP5Rv+LNUVT2Ue3nP9A@mail.gmail.com>
From: Andrey Smirnov <andrew.smirnov@gmail.com>
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
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH v2 8/8] miitool: Add code to register a PHY
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>

> What I'd like to do though is the following change. It changes the way
> how the mdio bus / phy address is specified. With separate options for
> specifying the mdio bus and address it's not clear that the -a, -b and
> -r options only make sense when given together, whereas the -a and -b
> options are ignored when information is printed.
> While at it I added a check for the maximum phy address and added a
> <varname> to BAREBOX_CMD_HELP_OPT when an option requires an argument.
>

Yeah, I agree, single "-r" option instead of what I originally had
makes much cleaner UI. Feel free to squash the fixup into my patch or
if it's easier I can make v3 of the patch set.

Thanks,
Andrey

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
