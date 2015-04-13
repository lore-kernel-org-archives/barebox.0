Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp03.smtpout.orange.fr ([80.12.242.125]
 helo=smtp.smtpout.orange.fr)
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1YhiYR-000438-Fd
 for barebox@lists.infradead.org; Mon, 13 Apr 2015 17:53:52 +0000
From: Robert Jarzmik <robert.jarzmik@free.fr>
References: <1428788562-10004-1-git-send-email-robert.jarzmik@free.fr>
 <20150413072112.GB9742@pengutronix.de>
Date: Mon, 13 Apr 2015 19:53:21 +0200
In-Reply-To: <20150413072112.GB9742@pengutronix.de> (Sascha Hauer's message of
 "Mon, 13 Apr 2015 09:21:12 +0200")
Message-ID: <87h9sjvrse.fsf@free.fr>
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
Subject: Re: [PATCH 1/2] net: smc1111: fix platform data initializations
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

Sascha Hauer <s.hauer@pengutronix.de> writes:

> On Sat, Apr 11, 2015 at 11:42:41PM +0200, Robert Jarzmik wrote:
>>  		pdata->config_setup = pdata->config_setup;
>>  		pdata->control_setup = pdata->control_setup;
>> +		priv->config_setup = pdata->config_setup;
>> +		priv->control_setup = pdata->control_setup;
>
> This should be:
>
>  		if (pdata->bus_width == 16)
>  			priv->a = access_via_16bit;
> -		pdata->config_setup = pdata->config_setup;
> -		pdata->control_setup = pdata->control_setup;
> +		priv->config_setup = pdata->config_setup;
> +		priv->control_setup = pdata->control_setup;
>  	}
>
> Fixed this while applying because this is master material and I want to
> make a release today.

Silly me, you're very right, thanks for the "on the fly" repatching.

Cheers.

-- 
Robert

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
