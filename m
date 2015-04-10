Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wi0-x233.google.com ([2a00:1450:400c:c05::233])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1YgUEk-0004uZ-Kx
 for barebox@lists.infradead.org; Fri, 10 Apr 2015 08:24:27 +0000
Received: by widjs5 with SMTP id js5so10859811wid.1
 for <barebox@lists.infradead.org>; Fri, 10 Apr 2015 01:24:04 -0700 (PDT)
Message-ID: <552788A2.3070307@gmail.com>
Date: Fri, 10 Apr 2015 10:24:02 +0200
From: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
References: <1428627714-17077-1-git-send-email-sebastian.hesselbarth@gmail.com>
 <1428627714-17077-2-git-send-email-sebastian.hesselbarth@gmail.com>
 <1428650112.2182.1.camel@lynxeye.de>
In-Reply-To: <1428650112.2182.1.camel@lynxeye.de>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH 1/4] pci: fix device registration for directly attached
 devices
To: Lucas Stach <dev@lynxeye.de>
Cc: barebox@lists.infradead.org

On 10.04.2015 09:15, Lucas Stach wrote:
> Am Freitag, den 10.04.2015, 03:01 +0200 schrieb Sebastian Hesselbarth:
>> Commit b8a1bb1dd215770670108fe5b0de0e5e137bf8fd
>>   ("pci: defer device registration until after bridge setup")
>> removed pci_register_device() from setup_device() to allow
>> bridges to be registered before attached sub-devices.
>>
>> This breaks normal registration for devices that are not
>> connected through a bridge. Fix this by calling pci_register_device()
>> for normal devices again.
>
>> Signed-off-by: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
>
> NACK: This again breaks devices that are connected through a bridge if
> the bridge configuration is invalid at startup.
>
> There is already a patch on the list which should fix this problem "pci:
> make sure to activate devices on the root bus".
> Could you please test this instead?

Thanks for the hint, the patch on the list indeed fixes root bus
attached device registration. I've replied with a Tested-by.

Please drop this patch.

Sebastian

>> ---
>> Cc: barebox@lists.infradead.org
>> Cc: Lucas Stach <dev@lynxeye.de>
>> ---
>>   drivers/pci/pci.c | 1 +
>>   1 file changed, 1 insertion(+)
>>
>> diff --git a/drivers/pci/pci.c b/drivers/pci/pci.c
>> index d6e95c3ec894..c633d138ca66 100644
>> --- a/drivers/pci/pci.c
>> +++ b/drivers/pci/pci.c
>> @@ -344,6 +344,7 @@ unsigned int pci_scan_bus(struct pci_bus *bus)
>>   			dev->rom_address = (l == 0xffffffff) ? 0 : l;
>>
>>   			setup_device(dev, 6);
>> +			pci_register_device(dev);
>>   			break;
>>   		case PCI_HEADER_TYPE_BRIDGE:
>>   			setup_device(dev, 2);
>
>


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
