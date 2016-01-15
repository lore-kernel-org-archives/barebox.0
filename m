Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wm0-x243.google.com ([2a00:1450:400c:c09::243])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1aK6Ra-0002e0-9N
 for barebox@lists.infradead.org; Fri, 15 Jan 2016 15:37:43 +0000
Received: by mail-wm0-x243.google.com with SMTP id l65so3419411wmf.3
 for <barebox@lists.infradead.org>; Fri, 15 Jan 2016 07:37:21 -0800 (PST)
Received: from desktop (p4FD4F2B1.dip0.t-ipconnect.de. [79.212.242.177])
 by smtp.gmail.com with ESMTPSA id n5sm3047148wmf.3.2016.01.15.07.37.18
 for <barebox@lists.infradead.org>
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 15 Jan 2016 07:37:19 -0800 (PST)
From: Holger Schurig <holgerschurig@gmail.com>
In-Reply-To: <1452870438-29656-14-git-send-email-s.hauer@pengutronix.de>
 (Sascha Hauer's message of "Fri, 15 Jan 2016 16:07:18 +0100")
References: <1452870438-29656-1-git-send-email-s.hauer@pengutronix.de>
 <1452870438-29656-14-git-send-email-s.hauer@pengutronix.de>
Date: Fri, 15 Jan 2016 16:37:17 +0100
Message-ID: <87mvs6kg5u.fsf@gmail.com>
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
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH 13/13] bootm: add initial FIT support
To: barebox@lists.infradead.org

Sascha Hauer <s.hauer@pengutronix.de> writes:
Hi,

> +config CMD_BOOTM_FITIMAGE
> +	bool
> +	prompt "FIT image support"
> +	select FITIMAGE
> +	depends on CMD_BOOTM && ARM
> +	help
> +	  Support using FIT Images. Have a look at the u-boot source
> +	  tree in the "doc/uImage.FIT" folder for more information:
> +	  http://git.denx.de/?p=u-boot.git;a=tree;f=doc/uImage.FIT

I know that you've posted a link here, and I even went there.

Still I think it would be better if the abbrev "FIT" get's explained
or spelled out at least once. Neither this help text nor the commit
text is really enlightening.


Holger

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
