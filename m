Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1cmGdg-0005WH-Eb
 for barebox@lists.infradead.org; Fri, 10 Mar 2017 09:15:10 +0000
References: <20170308092402.21245-1-o.rempel@pengutronix.de>
 <20170308092402.21245-2-o.rempel@pengutronix.de>
 <20170310073258.nahg4i2wmcrni5s2@pengutronix.de>
From: Oleksij Rempel <ore@pengutronix.de>
Message-ID: <3f45900f-b45b-a6d0-86c2-919056b25137@pengutronix.de>
Date: Fri, 10 Mar 2017 10:14:46 +0100
MIME-Version: 1.0
In-Reply-To: <20170310073258.nahg4i2wmcrni5s2@pengutronix.de>
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
Subject: Re: [PATCH 2/2] usb: fastboot: umount device before writing to it
To: Sascha Hauer <s.hauer@pengutronix.de>, Oleksij Rempel <o.rempel@pengutronix.de>
Cc: barebox@lists.infradead.org



On 03/10/2017 08:32 AM, Sascha Hauer wrote:
> On Wed, Mar 08, 2017 at 10:24:02AM +0100, Oleksij Rempel wrote:
>> From: Sascha Hauer <s.hauer@pengutronix.de>
>>
>> When a fastboot target refers to a device and we are going to write
>> to it, umount it beforehand, so that we do not end up with corrupt
>> data after writing.
>>
>> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
>> ---
>>  drivers/usb/gadget/f_fastboot.c | 1 +
>>  1 file changed, 1 insertion(+)
>>
>> diff --git a/drivers/usb/gadget/f_fastboot.c b/drivers/usb/gadget/f_fastboot.c
>> index a6192b9eb..8d69aea8b 100644
>> --- a/drivers/usb/gadget/f_fastboot.c
>> +++ b/drivers/usb/gadget/f_fastboot.c
>> @@ -754,6 +754,7 @@ static void cb_flash(struct usb_ep *ep, struct usb_request *req, const char *cmd
>>  		goto out;
>>  	}
>>
>> +	umount(filename);
>
> I'm not sure about this one. We should probably rather bail out with an
> error when it's mounted. When it's mounted then the result is undesired,
> even when we unmount it before flashing.

hm... for this case we will probably need some function to check if 
device is mounted. something like: is_mounted(path). Or, is there some 
other way to do this?



_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
