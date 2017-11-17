Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1eFcsh-0007mc-D7
 for barebox@lists.infradead.org; Fri, 17 Nov 2017 09:24:17 +0000
References: <20170816101644.20022-1-bst@pengutronix.de>
 <31a8bead-d908-23a1-60d5-bb9ebfbc5c89@pengutronix.de>
 <20171117084854.ugrlf5a2vnmsoz3v@pengutronix.de>
From: Bastian Stender <bst@pengutronix.de>
Message-ID: <acdcc686-a7aa-f461-0534-8fd5cdfed45e@pengutronix.de>
Date: Fri, 17 Nov 2017 10:23:51 +0100
MIME-Version: 1.0
In-Reply-To: <20171117084854.ugrlf5a2vnmsoz3v@pengutronix.de>
Content-Language: en-US
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
Subject: Re: [PATCH] i2c: mv64xxx: add timeout waiting for bus ready
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

On 11/17/2017 09:48 AM, Sascha Hauer wrote:
> On Wed, Nov 15, 2017 at 12:11:03PM +0100, Bastian Stender wrote:
>> On 08/16/2017 12:16 PM, Bastian Stender wrote:
>>> This prevents barebox hanging e.g. in case the i2c clock is accidentally
>>> connected to GND.
>>>
>>> Signed-off-by: Bastian Stender <bst@pengutronix.de>
>>> ---
>>
>> Any thoughts on this one?
> 
> Patch looks fine. I must have overlooked it. Should I apply it as
> is?

Yes, please. I did a quick test and the patch still works as expected :)

Bastian

-- 
Pengutronix e.K.
Industrial Linux Solutions
http://www.pengutronix.de/
Peiner Str. 6-8, 31137 Hildesheim, Germany
Amtsgericht Hildesheim, HRA 2686

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
