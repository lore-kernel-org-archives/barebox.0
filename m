Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 3.mo68.mail-out.ovh.net ([46.105.58.60])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1YFfQ9-0004vH-Uz
 for barebox@lists.infradead.org; Mon, 26 Jan 2015 08:53:22 +0000
Received: from mail181.ha.ovh.net (b9.ovh.net [213.186.33.59])
 by mo68.mail-out.ovh.net (Postfix) with SMTP id CFBC0FFB452
 for <barebox@lists.infradead.org>; Mon, 26 Jan 2015 09:52:52 +0100 (CET)
Mime-Version: 1.0 (Mac OS X Mail 8.1 \(1993\))
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
In-Reply-To: <1422192133-17906-1-git-send-email-antonynpavlov@gmail.com>
Date: Mon, 26 Jan 2015 16:51:14 +0800
Message-Id: <0085328D-B349-4555-BB8A-7E6EE36D9A96@jcrosoft.com>
References: <1422192133-17906-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: Re: [PATCH] commands/splash: fix '-y' option handling
To: Antony Pavlov <antonynpavlov@gmail.com>
Cc: barebox@lists.infradead.org


> On Jan 25, 2015, at 9:22 PM, Antony Pavlov <antonynpavlov@gmail.com> wrote:
> 
> The '-y' and '-o' options are independent,
> so just add missing 'break'.
> 
> Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
> ---
> commands/splash.c | 1 +
> 1 file changed, 1 insertion(+)
> 
> diff --git a/commands/splash.c b/commands/splash.c
> index 9bd84fb..077c0e4 100644
> --- a/commands/splash.c
> +++ b/commands/splash.c
> @@ -41,6 +41,7 @@ static int do_splash(int argc, char *argv[])
> 			break;
> 		case 'y':
> 			s.y = simple_strtoul(optarg, NULL, 0);
> +			break;
> 		case 'o':
> 			offscreen = 1;
> 		}
> -- 
> 2.1.4

I already send a patch weeks ago to fix

Best Regards,
J.
> 
> 
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
