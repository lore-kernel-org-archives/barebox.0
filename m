Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wg0-x22b.google.com ([2a00:1450:400c:c00::22b])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1XAO6y-0007LC-Ui
 for barebox@lists.infradead.org; Thu, 24 Jul 2014 18:51:29 +0000
Received: by mail-wg0-f43.google.com with SMTP id l18so3101121wgh.14
 for <barebox@lists.infradead.org>; Thu, 24 Jul 2014 11:51:05 -0700 (PDT)
Message-ID: <53D155A3.7030306@gmail.com>
Date: Thu, 24 Jul 2014 20:51:15 +0200
From: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
References: <1406208526-24261-1-git-send-email-sebastian.hesselbarth@gmail.com>
 <1406208526-24261-2-git-send-email-sebastian.hesselbarth@gmail.com>
 <53D12FA0.70507@gmail.com>
In-Reply-To: <53D12FA0.70507@gmail.com>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH 1/6] USB: Fix stale usb devices in usb_device_list
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: Thomas Petazzoni <thomas.petazzoni@free-electrons.com>, barebox@lists.infradead.org

On 07/24/2014 06:09 PM, Sebastian Hesselbarth wrote:
> On 07/24/2014 03:28 PM, Sebastian Hesselbarth wrote:
>> New usb devices are added to a list of usb devices, but when removing
>> the corresponding usb_device it was not removed from that list. Fix it
>> by deleting it properly from the usb_device_list.
>>
>> Signed-off-by: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
>> ---
>> To: Sascha Hauer <s.hauer@pengutronix.de>
>> Cc: Thomas Petazzoni <thomas.petazzoni@free-electrons.com>
>> Cc: Ezequiel Garcia <ezequiel.garcia@free-electrons.com>
>> Cc: barebox@lists.infradead.org
>> ---
>>   drivers/usb/core/usb.c | 1 +
>>   1 file changed, 1 insertion(+)
>>
>> diff --git a/drivers/usb/core/usb.c b/drivers/usb/core/usb.c
>> index 351e783b6536..2cc338465539 100644
>> --- a/drivers/usb/core/usb.c
>> +++ b/drivers/usb/core/usb.c
>> @@ -472,6 +472,7 @@ void usb_remove_device(struct usb_device *usbdev)
>>           dev_err(&usbdev->dev, "failed to unregister\n");
>>
>>       usbdev->parent->children[usbdev->portnr - 1] = NULL;
>> +    list_del(&usbdev->list);
> 
> Unfortunately, this breaks usb_remove_device when called on a
> device that has not yet gone through usb_new_device().
> 
> I'll have a closer look at it.

Ok, this patch is fine as is.

The issue comes from  usb_hub_port_connect_change():

/* Disconnect any existing devices under this port */
if (((!(portstatus & USB_PORT_STAT_CONNECTION)) &&
     (!(portstatus & USB_PORT_STAT_ENABLE))) || (dev->children[port])) {
	dev_dbg(&dev->dev, "usb_disconnect(&hub->children[port]);\n");
	usb_remove_device(dev->children[port]);
	/* Return now if nothing is connected */
	if (!(portstatus & USB_PORT_STAT_CONNECTION))
	return;
}

Above will call usb_remove_device() if CONNECTION _and_ ENABLE is not
set *or* dev->children[port] is set.

Although very unlikely we encounter a device removal without having
successfully detected the device (and set dev->children[port]) before,
we should never call usb_remove_device() with NULL.

To me it looks like somebody tried to invert above checks at some
point and failed.

Replacing the check with something more readable solves the issue
I have been suffering (ok, it was during testing USB3.0 stuff):

if (dev->children[port] && !(portstatus & USB_PORT_STAT_CONNECTION)) {
	dev_dbg(&dev->dev, "disconnect detected on port %d\n", port + 1);
	usb_remove_device(dev->children[port]);
	return;
}

/* Deallocate disabled but connected devices */
if (dev->children[port] && !(portstatus & USB_PORT_STAT_ENABLE))
	usb_remove_device(dev->children[port]);

Also, a check for usbdev == NULL in usb_remove_device() to make
sure it never happens again.

I'll send a v2 of xHCI anyway, so I'll add a patch on top.

Sebastian

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
