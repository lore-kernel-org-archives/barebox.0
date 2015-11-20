Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.kymetacorp.com ([192.81.58.21])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZzsSX-0005PI-H5
 for barebox@lists.infradead.org; Fri, 20 Nov 2015 20:39:06 +0000
From: Trent Piepho <tpiepho@kymetacorp.com>
Date: Fri, 20 Nov 2015 20:38:28 +0000
Message-ID: <1448051909.4553.191.camel@rtred1test09.kymeta.local>
References: <1448048172-10080-1-git-send-email-sebastian.hesselbarth@gmail.com>
 <1448048172-10080-13-git-send-email-sebastian.hesselbarth@gmail.com>
In-Reply-To: <1448048172-10080-13-git-send-email-sebastian.hesselbarth@gmail.com>
Content-Language: en-US
Content-ID: <FA5DF563E603FB41B5B3768E7FC0F5C6@kymetacorp.com>
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
Subject: Re: [PATCH v2 12/19] mtd: nand_mrvl_nfc: Prepare for different HW
 ECC strengths
To: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Cc: Thomas Petazzoni <thomas.petazzoni@free-electrons.com>, "barebox@lists.infradead.org" <barebox@lists.infradead.org>, Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>

On Fri, 2015-11-20 at 20:36 +0100, Sebastian Hesselbarth wrote:

> +
> +static int pxa_ecc_init(struct mrvl_nand_host *host,
> +			struct nand_ecc_ctrl *ecc,
> +			int strength, int ecc_stepsize, int page_size)
> +{
> +	int ret = -ENODEV;
> +
> +	switch (strength) {
> +	case 1:
> +		ret = pxa_ecc_strength1(host, ecc, ecc_stepsize, page_size);
> +		break;
> +	}

It would be a bit more clear to write this as:

switch (strength) {
case 1:
        ret = pxa_ecc_strength1(...);
        break;
default:
        ret = -ENODEV;
        break;
}

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
