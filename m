Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wi0-x22b.google.com ([2a00:1450:400c:c05::22b])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1X9s9g-0003NG-31
 for barebox@lists.infradead.org; Wed, 23 Jul 2014 08:44:09 +0000
Received: by mail-wi0-f171.google.com with SMTP id hi2so7345796wib.10
 for <barebox@lists.infradead.org>; Wed, 23 Jul 2014 01:43:44 -0700 (PDT)
Message-ID: <53CF75BC.8010704@gmail.com>
Date: Wed, 23 Jul 2014 10:43:40 +0200
From: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
References: <1406102352-5044-1-git-send-email-sebastian.hesselbarth@gmail.com>
 <1406102352-5044-5-git-send-email-sebastian.hesselbarth@gmail.com>
 <20140723124754.a797fb244db8ac73049f0a78@gmail.com>
In-Reply-To: <20140723124754.a797fb244db8ac73049f0a78@gmail.com>
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
Subject: Re: [PATCH 4/6] pci: allow to set bus number on
 register_pci_controller
To: Antony Pavlov <antonynpavlov@gmail.com>
Cc: Thomas Petazzoni <thomas.petazzoni@free-electrons.com>, barebox@lists.infradead.org

[re-added barebox ML Cc]

On 07/23/2014 10:47 AM, Antony Pavlov wrote:
> On Wed, 23 Jul 2014 09:59:10 +0200
> Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com> wrote:
>
>> Currently, all PCI controllers are registered with struct pci_bus
>> number set to zero. Allow to set the bus number before registering
>> the controller and scan the bus.
>>
>> Signed-off-by: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
[...]
>> diff --git a/arch/mips/mach-malta/pci.c b/arch/mips/mach-malta/pci.c
>> index 90351758e06d..47bfb4cc0833 100644
>> --- a/arch/mips/mach-malta/pci.c
>> +++ b/arch/mips/mach-malta/pci.c
>> @@ -229,7 +229,7 @@ static int pcibios_init(void)
>>   		GT_WRITE(GT_PCI0IOREMAP_OFS, map);
>>   	}
>>
>> -	register_pci_controller(&gt64120_controller);
>> +	register_pci_controller(&gt64120_controller, 0);
>
> Can we add some dynamic pci bus number capabilities? E.g. something like DEVICE_ID_DYNAMIC for devices.
>
> Also take a note that if barebox find some PCI-PCI bridge (PCIe switch) during bus scanning
> then barebox have to alloca new bus number.

Yeah, I though about it already but didn't came to a clean solution. I
am not too deep into PCI topology.

IMHO, the controller should never decide what bus number it get
assigned to but the current implementation of register_pci_controller
does not allow mvebu-pci to set up the assigned bus number before
pci_scan_bus starts.

I thought about splitting register_pci_controller into alloc and access
phase, that would allow to pick a dynamic (the next free) number. Then
any controller can apply bus number related setup before actually
registering the controller.

BTW, there is no PCI bridge support in the current implementation at
all.

Sebastian

>>   	return 0;
>>   }
>> diff --git a/drivers/pci/pci.c b/drivers/pci/pci.c
>> index b30cdd96f8ca..f755d13e14ee 100644
>> --- a/drivers/pci/pci.c
>> +++ b/drivers/pci/pci.c
>> @@ -27,7 +27,7 @@ static struct pci_bus *pci_alloc_bus(void)
>>   	return b;
>>   }
>>
>> -void register_pci_controller(struct pci_controller *hose)
>> +void register_pci_controller(struct pci_controller *hose, int num)
>>   {
>>   	struct pci_bus *bus;
>>
>> @@ -39,6 +39,7 @@ void register_pci_controller(struct pci_controller *hose)
>>   	bus->ops = hose->pci_ops;
>>   	bus->resource[0] = hose->mem_resource;
>>   	bus->resource[1] = hose->io_resource;
>> +	bus->number = num;
>>   	bus->sysdata = hose;
>>
>>   	pci_scan_bus(bus);
>> diff --git a/include/linux/pci.h b/include/linux/pci.h
>> index 6caed01c9939..c044225c3ecb 100644
>> --- a/include/linux/pci.h
>> +++ b/include/linux/pci.h
>> @@ -246,7 +246,7 @@ int pci_register_device(struct pci_dev *pdev);
>>   extern struct list_head pci_root_buses; /* list of all known PCI buses */
>>
>>   extern unsigned int pci_scan_bus(struct pci_bus *bus);
>> -extern void register_pci_controller(struct pci_controller *hose);
>> +extern void register_pci_controller(struct pci_controller *hose, int num);
>>
>>   int pci_bus_read_config_byte(struct pci_bus *bus, unsigned int devfn,
>>   			     int where, u8 *val);
>> --
>> 2.0.0
>>
>
>


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
