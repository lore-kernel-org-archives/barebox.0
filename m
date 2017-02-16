Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from qmail.e-mind.com ([188.94.192.42])
 by bombadil.infradead.org with smtp (Exim 4.87 #1 (Red Hat Linux))
 id 1ceNIU-0005HG-Rl
 for barebox@lists.infradead.org; Thu, 16 Feb 2017 14:44:42 +0000
References: <3a707429-03a7-db6b-a1b1-1e70ec0b929e@eurekelettronica.it>
 <20170210073541.73bsfjhk3fu7nnwm@pengutronix.de>
 <e2e3ab47-9cbd-0437-d889-a98704459d1b@eurekelettronica.it>
 <20170215115104.qez5tgbsvwt3zxzz@pengutronix.de>
 <e77ad532-0850-45a7-d41e-90e83b655dbf@eurekelettronica.it>
 <20170216072801.sh3byseyh3f6osgg@pengutronix.de>
From: gianluca <gianlucarenzi@eurekelettronica.it>
Message-ID: <067eac64-0c28-4012-23bb-813e462d74c2@eurekelettronica.it>
Date: Thu, 16 Feb 2017 15:43:52 +0100
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
>> On 02/15/2017 12:51 PM, Sascha Hauer wrote:
>>> On Tue, Feb 14, 2017 at 11:32:44AM +0100, gianluca wrote:
>>>> On 02/10/2017 08:35 AM, Sascha Hauer wrote:
>> If no eeprom is found activate the status of the hdmi node from "disabled"
>> to "okay". So with the same algorithm as above,
>>
>> Those operations will be done in the coredevice_initcall() level. Is this
>> correct?
>
> Sounds like a plan. I'm not sure though if you find your EEPROM at
> coredevice_initcall time.
>

Nope. Accessing device drivers (enabled in the device-tree) is possible 
in the section: device_initcall() and *NOT* in the coredevice_initcall() 
time.

Anyway I was wondering if looking for a node in the device-tree, it will 
be possible to change the status of that node.

in DTS I have

&hdmi {
	status="disabled";
}

but I need to set the status to "okay" later on the device_initcall() time.

Iterating in the device tree using for_each_node_by_name_from() does not 
show any node like hdmi, but using the same function to look for any 
"display-timing" section it works.

Why? Where I have to look on to change the status of the device driver 
node &hdmi and &ldb?

I see a lot of __fixup() functions but I do not understand it correctly.
Like to change the phandle of the native-mode too..

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
