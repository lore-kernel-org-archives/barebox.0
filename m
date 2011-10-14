Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 6.mo4.mail-out.ovh.net ([188.165.36.253]
	helo=mo4.mail-out.ovh.net)
	by canuck.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
	id 1REXwK-0005iZ-Te
	for barebox@lists.infradead.org; Fri, 14 Oct 2011 02:56:06 +0000
Received: from mail423.ha.ovh.net (b9.ovh.net [213.186.33.59])
	by mo4.mail-out.ovh.net (Postfix) with SMTP id 6F782FFC360
	for <barebox@lists.infradead.org>;
	Fri, 14 Oct 2011 04:50:34 +0200 (CEST)
Date: Fri, 14 Oct 2011 04:24:56 +0200
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20111014022456.GB1459@game.jcrosoft.org>
References: <1318517909-21205-1-git-send-email-s.hauer@pengutronix.de>
	<1318517909-21205-2-git-send-email-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1318517909-21205-2-git-send-email-s.hauer@pengutronix.de>
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
Subject: Re: [PATCH 1/2] ARM: use arm_system_rev from environment
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

On 16:58 Thu 13 Oct     , Sascha Hauer wrote:
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> ---
>  arch/arm/lib/armlinux.c |   11 +++++++++++
>  1 files changed, 11 insertions(+), 0 deletions(-)
> 
> diff --git a/arch/arm/lib/armlinux.c b/arch/arm/lib/armlinux.c
> index e3a74f4..f636f12 100644
> --- a/arch/arm/lib/armlinux.c
> +++ b/arch/arm/lib/armlinux.c
> @@ -198,7 +198,14 @@ void armlinux_set_architecture(int architecture)
>  
>  void armlinux_set_revision(unsigned int rev)
>  {
> +	char *revstr = asprintf("%d", rev);
> +
>  	system_rev = rev;
> +
> +	setenv("arm_system_rev", revstr);
> +	export("arm_system_rev");
> +
> +	kfree(revstr);
>  }
>  
>  void armlinux_set_serial(u64 serial)
> @@ -209,6 +216,10 @@ void armlinux_set_serial(u64 serial)
>  void start_linux(void *adr, int swap, struct image_data *data)
>  {
>  	void (*kernel)(int zero, int arch, void *params) = adr;
> +	const char *revstr = getenv("arm_system_rev");
> +
> +	if (revstr)
> +		system_rev = simple_strtoul(revstr, NULL, 0);
we need to use boot getopt  as done on bootm

Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
