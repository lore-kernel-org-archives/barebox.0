Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQPsC-0005jm-UN
 for barebox@lists.infradead.org; Mon, 20 Apr 2020 06:25:42 +0000
References: <20200415092916.21285-1-a.fatoum@pengutronix.de>
 <20200420062232.GB1694@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Message-ID: <1890d7dd-db55-8237-059a-be522b5c0d17@pengutronix.de>
Date: Mon, 20 Apr 2020 08:25:37 +0200
MIME-Version: 1.0
In-Reply-To: <20200420062232.GB1694@pengutronix.de>
Content-Language: en-US
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
Subject: Re: [PATCH 1/4] mci: sdhci: provide sdhci_readx_poll_timeout helpers
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

On 4/20/20 8:22 AM, Sascha Hauer wrote:
> On Wed, Apr 15, 2020 at 11:29:13AM +0200, Ahmad Fatoum wrote:
>> The sdhci_readN accessors don't lend themselves for clean use with
>> readx_poll_timeout because they accept two arguments. Add
>> a sdhci-specific helper, so the sdhci drivers can cut down on the
>> timeout loop boilerplate.

> Is this really an improvement? How many variants of these helpers will we get?

It's used 6 times within this series. Other SDHCI drivers can make use of it too.
Would you prefer extending <linux/iopoll.h> with a two arg accessor variant
instead?

Cheers,

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
