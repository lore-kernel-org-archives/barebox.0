Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mx0.a-ix.net ([2a03:4000:21:445::fe61:e52a])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYPgm-0002F6-29
 for barebox@lists.infradead.org; Wed, 05 Jun 2019 06:46:25 +0000
MIME-Version: 1.0
Date: Wed, 05 Jun 2019 08:46:17 +0200
From: Moritz Augsburger <ml+barebox@moritz.augsburger.name>
In-Reply-To: <CAPYMOwmTx7aH-C5OZL+5RXXcyWnF7aswTduVL4b9F8jw+LEfjA@mail.gmail.com>
References: <mailman.44637.1559659159.2376.barebox@lists.infradead.org>
 <CAPYMOwmTx7aH-C5OZL+5RXXcyWnF7aswTduVL4b9F8jw+LEfjA@mail.gmail.com>
Message-ID: <f57f1082602be1017ca4fabffaf1a75f@moritz.augsburger.name>
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
Subject: Re: Raspberry Pi Barebox State Integration - SD card
To: Valentina Rusu <skorpyon1992@gmail.com>
Cc: barebox@lists.infradead.org

Hi,

Am 2019-06-05 06:26, schrieb Valentina Rusu:
> Thank you for the response!
> 
> I had a quick look over this patch, I need to find a way to adapt it
> for RPi 3, as vmmc-supply , reg_3v3, vqmmc-supply, reg_1v8 are not
> configured for rpi 3 (they exist only for CM1 and CM3 as I have seen
> in the device tree sources).

I guess these are leftovers from sdhost<->sdhci switching, the important 
part is the partition definition inside sdhost.

Therefore, try leaving them out, as the upstream files already contain a 
valid &sdhost definitions.

Best regards
Moritz

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
