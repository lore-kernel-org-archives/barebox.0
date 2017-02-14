Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from qmail.e-mind.com ([188.94.192.42])
 by bombadil.infradead.org with smtp (Exim 4.87 #1 (Red Hat Linux))
 id 1cdaqJ-0003Ey-2Z
 for barebox@lists.infradead.org; Tue, 14 Feb 2017 11:00:22 +0000
References: <3a707429-03a7-db6b-a1b1-1e70ec0b929e@eurekelettronica.it>
 <20170210073541.73bsfjhk3fu7nnwm@pengutronix.de>
 <e2e3ab47-9cbd-0437-d889-a98704459d1b@eurekelettronica.it>
From: gianluca <gianlucarenzi@eurekelettronica.it>
Message-ID: <814412dc-f364-70cb-43a9-f9e971a0b3c1@eurekelettronica.it>
Date: Tue, 14 Feb 2017 11:59:53 +0100
MIME-Version: 1.0
In-Reply-To: <e2e3ab47-9cbd-0437-d889-a98704459d1b@eurekelettronica.it>
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

On 02/14/2017 11:32 AM, gianluca wrote:
> On 02/10/2017 08:35 AM, Sascha Hauer wrote:
>> Hi Gianluca,
>>
>> On Thu, Feb 09, 2017 at 03:37:41PM +0100, gianluca wrote:
>>> Hello,
>>> I would like to know if there is a clear way on using the lvds pins
>>> to drive
>>> a LVDS display in a custom made board, based on iMX6Q (in the near
>>> future
>>> the iMX6Dual).
>>
>> I think what you are looking for is of_device_enable_and_register() or
>> of_device_enable_and_register_by_name(). You can call it on either the
>> lvds device node or the hdmi device node, depending on whether you found
>> an EEPROM or not.
>>
>
> I think this is not necessary as during boot I can see clearly:
>
>> imx-ipuv3 2400000.ipu: IPUv3H probed
>> imx-ipuv3 2800000.ipu: IPUv3H probed
>> imx-ldb ldb.10: probe failed: Invalid argument
>> imx-hdmi 120000.hdmi: Detected HDMI controller 0x13:0xa:0xa0:0xc1
>

I had a wrong configuration:

>
>> &ldb {
>>     status = "okay";
>>
>>     lvds0: lvds-channel@0 {
>>         fsl,data-mapping = "spwg";
>>         fsl,data-width = <16>;
>>         status = "okay";
>>

fsl,data-width = must be <18> or <24>

Now boots without error, but the framebuffer device is not registered. 
Why? I need something more??


-- 
Eurek s.r.l.                          |
Electronic Engineering                | http://www.eurek.it
via Celletta 8/B, 40026 Imola, Italy  | Phone: +39-(0)542-609120
p.iva 00690621206 - c.f. 04020030377  | Fax:   +39-(0)542-609212

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
