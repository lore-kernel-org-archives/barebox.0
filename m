Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iFc8w-0006gb-PG
 for barebox@lists.infradead.org; Wed, 02 Oct 2019 10:46:04 +0000
References: <6809ed13f6444459cccef85cddc5714d9ea5b22b.camel@pengutronix.de>
 <20191002075754.9257-1-a.fatoum@pengutronix.de>
 <6673f557f1dc626e64c2514bf9bb93cd2c790a5e.camel@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Message-ID: <1d85b1ca-bc84-f64c-03ff-68710a998109@pengutronix.de>
Date: Wed, 2 Oct 2019 12:45:59 +0200
MIME-Version: 1.0
In-Reply-To: <6673f557f1dc626e64c2514bf9bb93cd2c790a5e.camel@pengutronix.de>
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
Subject: Re: [PATCH] ARM: aarch64: save clobbered registers in
 __barebox_arm_entry
To: Rouven Czerwinski <rcz@pengutronix.de>
Cc: barebox@lists.infradead.org

On 10/2/19 11:30 AM, Rouven Czerwinski wrote:
> On Wed, 2019-10-02 at 09:57 +0200, Ahmad Fatoum wrote:
>> arm_early_mmu_cache_invalidate now clobbers x0, x1, x2, which might
>> be
>> passed by a previous stage bootloader. Have the caller save them.
>> ---
>> Rouven, does this work for you?
> 
> No, this does not fix the issue. I'll take some time to look into this
> at a later point.

Hmm, could you tell me a bit about how the i.MX8 boots?
At what stage does it break? barebox PBL? barebox proper?
Is there something running prior to the barebox PBL?
Is the MMU off when barebox is run?

> 
> - rcz
> 
> 


-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
