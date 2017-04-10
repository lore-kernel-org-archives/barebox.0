Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from asavdk4.altibox.net ([109.247.116.15])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1cxYh1-0007VS-67
 for barebox@lists.infradead.org; Mon, 10 Apr 2017 12:45:18 +0000
Date: Mon, 10 Apr 2017 14:44:48 +0200
From: Sam Ravnborg <sam@ravnborg.org>
Message-ID: <20170410124448.GA1965@ravnborg.org>
References: <20170410071420.26884-1-s.hauer@pengutronix.de>
 <20170410071420.26884-4-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20170410071420.26884-4-s.hauer@pengutronix.de>
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
Subject: Re: [PATCH 03/10] lib: implement simple_strtoll
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: Barebox List <barebox@lists.infradead.org>

Hi Sascha.

Nitpick mode...

> --- a/lib/strtox.c
> +++ b/lib/strtox.c
> @@ -65,3 +65,11 @@ unsigned long long simple_strtoull (const char *cp, char **endp, unsigned int ba
>  	return result;
>  }
>  EXPORT_SYMBOL(simple_strtoull);
> +
> +long long simple_strtoll(const char *cp,char **endp,unsigned int base)
> +{
> +	if(*cp=='-')

It hurts my eyes to see the missing space between if  and "(".

simple_strtol() suffer from the same issue, but in the rest of the file
there is a space between if and "("

And on top I did not see simple_strtoull() used in the patch series.
But then I may have missed it as I just skimmed the patches.
Everything else I saw looked good.

	Sam

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
