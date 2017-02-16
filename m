Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from qmail.e-mind.com ([188.94.192.42])
 by bombadil.infradead.org with smtp (Exim 4.87 #1 (Red Hat Linux))
 id 1ceI2v-0006ak-G5
 for barebox@lists.infradead.org; Thu, 16 Feb 2017 09:08:16 +0000
References: <3a707429-03a7-db6b-a1b1-1e70ec0b929e@eurekelettronica.it>
 <20170210073541.73bsfjhk3fu7nnwm@pengutronix.de>
 <e2e3ab47-9cbd-0437-d889-a98704459d1b@eurekelettronica.it>
 <20170215115104.qez5tgbsvwt3zxzz@pengutronix.de>
 <e77ad532-0850-45a7-d41e-90e83b655dbf@eurekelettronica.it>
 <20170216072801.sh3byseyh3f6osgg@pengutronix.de>
From: gianluca <gianlucarenzi@eurekelettronica.it>
Message-ID: <3fbfb5fd-6334-9866-edf7-16dabc124a46@eurekelettronica.it>
Date: Thu, 16 Feb 2017 10:07:49 +0100
MIME-Version: 1.0
In-Reply-To: <20170216072801.sh3byseyh3f6osgg@pengutronix.de>
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
Subject: Re: Using LVDS in a iMX6Q/D from Barebox
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

On 02/16/2017 08:28 AM, Sascha Hauer wrote:
> On Wed, Feb 15, 2017 at 03:34:55PM +0100, gianluca wrote:
>> First of all hdmi and ldb node are "disabled" by default.
>>
>> Then I am looking for any eeprom in the lvds connector I have.
>> If it is found, check the phandle "native-mode" of the display-timings node
>> to match the value found in eeprom. If not matches the native-mode, it
>>
>> If no eeprom is found activate the status of the hdmi node from "disabled"
>> to "okay". So with the same algorithm as above,
>>
>> Those operations will be done in the coredevice_initcall() level. Is this
>> correct?
>
> Sounds like a plan. I'm not sure though if you find your EEPROM at
> coredevice_initcall time.
>

Now I will check. In the worst case I will do a first-gpio-based (no 
device-tree based) i2c bus access, then when the i2c driver will get 
probed, I will do any other operation.

I will keep you informed.

Regards,
-- 
Eurek s.r.l.                          |
Electronic Engineering                | http://www.eurek.it
via Celletta 8/B, 40026 Imola, Italy  | Phone: +39-(0)542-609120
p.iva 00690621206 - c.f. 04020030377  | Fax:   +39-(0)542-609212

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
