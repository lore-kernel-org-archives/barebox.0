Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp2-g21.free.fr ([212.27.42.2])
	by canuck.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
	id 1QmOfi-0001nn-Uz
	for barebox@lists.infradead.org; Thu, 28 Jul 2011 11:22:35 +0000
Received: from [192.168.1.102] (unknown [82.240.38.71])
	by smtp2-g21.free.fr (Postfix) with ESMTP id 40CB24B001D
	for <barebox@lists.infradead.org>;
	Thu, 28 Jul 2011 13:22:21 +0200 (CEST)
Message-ID: <4E31466C.7090607@eukrea.com>
Date: Thu, 28 Jul 2011 13:22:20 +0200
From: =?ISO-8859-1?Q?Eric_B=E9nard?= <eric@eukrea.com>
MIME-Version: 1.0
References: <1311850847-5140-1-git-send-email-s.hauer@pengutronix.de>
	<1311850847-5140-4-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1311850847-5140-4-git-send-email-s.hauer@pengutronix.de>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
	<mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
	<mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH 3/3] arm: add support for the i.MX53 loco board
To: barebox@lists.infradead.org

Hi Sascha,

On 28/07/2011 13:00, Sascha Hauer wrote:
>   	prompt "i.MX53 Board Type"
>
> +config MACH_FREESCALE_MX53_LOCO
> +	bool "Freescale i.MX53 LOCO"
> +	select HAVE_MMU
> +	select MACH_HAS_LOWLEVEL_INIT
> +
just a detail : the official name is "Quick Start Board" (IMX53QSB), Loco was 
the engineering name

Eric

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
