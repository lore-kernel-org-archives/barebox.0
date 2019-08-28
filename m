Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from submit-2.e-mind.com ([188.94.192.46])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2vnk-000313-1K
 for barebox@lists.infradead.org; Wed, 28 Aug 2019 11:07:45 +0000
Received: from localhost (unknown [127.0.0.1])
 by submit-2.e-mind.com (Postfix) with ESMTP id 4B78F8479EB
 for <barebox@lists.infradead.org>; Wed, 28 Aug 2019 11:07:41 +0000 (UTC)
Received: from submit-2.e-mind.com ([127.0.0.1])
 by localhost (submit-2.e-mind.com [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id TN7XWnGIuLWw for <barebox@lists.infradead.org>;
 Wed, 28 Aug 2019 13:07:41 +0200 (CEST)
Received: from qmail.e-mind.com (qmail34.e-mind.com [188.94.192.34])
 by submit-2.e-mind.com (Postfix) with SMTP id 117518479E8
 for <barebox@lists.infradead.org>; Wed, 28 Aug 2019 13:07:41 +0200 (CEST)
References: <4c123056-bf80-deb6-f0d7-6c1a928946dd@eurek.it>
 <20190828104530.k4knoe2gw2kbudo6@pengutronix.de>
From: gianluca <gianlucarenzi@eurek.it>
Message-ID: <c742e40d-5a88-8266-e1aa-9e9f92d869c6@eurek.it>
Date: Wed, 28 Aug 2019 13:07:39 +0200
MIME-Version: 1.0
In-Reply-To: <20190828104530.k4knoe2gw2kbudo6@pengutronix.de>
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
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: MMC hardware partitioning
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

On 08/28/2019 12:45 PM, Sascha Hauer wrote:
> Hi Gianluca,
>
> On Tue, Aug 27, 2019 at 03:38:46PM +0200, gianluca wrote:
>> Hello everyone!
>> I am wondering if there is some way to enable the partition protection for
>> eMMC partition (usually to avoid data corruption due to a powerloss) in
>> Barebox, as seen is mmc command in the bootloader counterpart U-Boot (as
>> reference see u-boot/cmd/mmc.c ).
>
> Have you found the barebox mmc_extcsd command? I don't know if that does
> what you want, but it's worth a look.
>

Yes. I think it is. Right now I am thinking about using it from Linux 
with the mmc-utils, but if needed from bootloader I will give it a chance.

Thanks!

-- 
Eurek s.r.l.                          |
Electronic Engineering                | http://www.eurek.it
via Celletta 8/B, 40026 Imola, Italy  | Phone: +39-(0)542-609120
p.iva 00690621206 - c.f. 04020030377  | Fax:   +39-(0)542-609212

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
