Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 13.mo6.mail-out.ovh.net ([188.165.56.124]
 helo=mo6.mail-out.ovh.net)
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1X4S6e-0001Sq-Gm
 for barebox@lists.infradead.org; Tue, 08 Jul 2014 09:54:37 +0000
Received: from mail625.ha.ovh.net (b9.ovh.net [213.186.33.59])
 by mo6.mail-out.ovh.net (Postfix) with SMTP id 52753FF901C
 for <barebox@lists.infradead.org>; Tue,  8 Jul 2014 11:54:11 +0200 (CEST)
Mime-Version: 1.0 (Mac OS X Mail 7.3 \(1878.2\))
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
In-Reply-To: <20140708135021.2841983f738ecc73ab185adf@gmail.com>
Date: Tue, 8 Jul 2014 17:53:57 +0800
Message-Id: <CD089837-2CB3-49D8-8F8A-965176D65247@jcrosoft.com>
References: <1404422826-6589-1-git-send-email-antonynpavlov@gmail.com>
 <1404422826-6589-4-git-send-email-antonynpavlov@gmail.com>
 <20140707182210.GC19147@ns203013.ovh.net>
 <20140708135021.2841983f738ecc73ab185adf@gmail.com>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH v5 3/7] PCI: initial commit
To: Antony Pavlov <antonynpavlov@gmail.com>
Cc: barebox@lists.infradead.org


On Jul 8, 2014, at 5:50 PM, Antony Pavlov <antonynpavlov@gmail.com> wrote:

> 
> On Mon, 7 Jul 2014 20:22:10 +0200
> Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com> wrote:
> 
>> On 01:27 Fri 04 Jul     , Antony Pavlov wrote:
>>> 
>>> used shorten version of linux-2.6.39 pci_ids.h
>>> 
>>> Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
>>> Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
>>> ---
>>> drivers/Kconfig                 |   1 +
>>> drivers/Makefile                |   1 +
>>> drivers/pci/Kconfig             |  29 ++++
>>> drivers/pci/Makefile            |   8 ++
>>> drivers/pci/bus.c               | 110 +++++++++++++++
>>> drivers/pci/pci.c               | 292 +++++++++++++++++++++++++++++++++++++++
>>> drivers/pci/pci_iomap.c         |  29 ++++
>>> include/linux/mod_devicetable.h |  20 +++
>>> include/linux/pci.h             | 297 ++++++++++++++++++++++++++++++++++++++++
>>> include/linux/pci_ids.h         | 136 ++++++++++++++++++
>>> include/linux/pci_regs.h        | 110 +++++++++++++++
>>> 11 files changed, 1033 insertions(+)
>>> 
>>> diff --git a/drivers/Kconfig b/drivers/Kconfig
>>> index 53e1e97..12a9d8c 100644
>>> --- a/drivers/Kconfig
>>> +++ b/drivers/Kconfig
>>> @@ -27,5 +27,6 @@ source "drivers/pinctrl/Kconfig"
>>> source "drivers/bus/Kconfig"
>>> source "drivers/regulator/Kconfig"
>>> source "drivers/reset/Kconfig"
>>> +source "drivers/pci/Kconfig"
>>> 
>>> endmenu
>>> diff --git a/drivers/Makefile b/drivers/Makefile
>>> index ef3604f..1990e86 100644
>>> --- a/drivers/Makefile
>>> +++ b/drivers/Makefile
>>> @@ -26,3 +26,4 @@ obj-y += pinctrl/
>>> obj-y += bus/
>>> obj-$(CONFIG_REGULATOR) += regulator/
>>> obj-$(CONFIG_RESET_CONTROLLER) += reset/
>>> +obj-$(CONFIG_PCI) += pci/
>>> diff --git a/drivers/pci/Kconfig b/drivers/pci/Kconfig
>>> new file mode 100644
>>> index 0000000..9e46592
>>> --- /dev/null
>>> +++ b/drivers/pci/Kconfig
>>> @@ -0,0 +1,29 @@
>>> +config HW_HAS_PCI
>>> +	bool
>>> +
>>> +if HW_HAS_PCI
>>> +
>>> +menu "PCI bus options"
>>> +
>>> +config PCI
>>> +	bool "Support for PCI controller"
>>> +	depends on HW_HAS_PCI
>>> +	help
>>> +	  Find out whether you have a PCI motherboard. PCI is the name of a
>>> +	  bus system, i.e. the way the CPU talks to the other stuff inside
>>> +	  your box. If you have PCI, say Y, otherwise N.
>>> +
>>> +
>>> +config PCI_DEBUG
>>> +	bool "PCI Debugging"
>>> +	depends on PCI
>>> +	help
>>> +	  Say Y here if you want the PCI core to produce a bunch of debug
>>> +	  messages to the system log.  Select this if you are having a
>>> +	  problem with PCI support and want to see more of what is going on.
>>> +
>>> +	  When in doubt, say N.
>>> +
>>> +endmenu
>>> +
>>> +endif
>>> diff --git a/drivers/pci/Makefile b/drivers/pci/Makefile
>>> new file mode 100644
>>> index 0000000..edac1a5
>>> --- /dev/null
>>> +++ b/drivers/pci/Makefile
>>> @@ -0,0 +1,8 @@
>>> +#
>>> +# Makefile for the PCI bus specific drivers.
>>> +#
>>> +obj-y		+= pci.o bus.o pci_iomap.o
>>> +
>>> +ccflags-$(CONFIG_PCI_DEBUG) := -DDEBUG
>>> +
>>> +CPPFLAGS += $(ccflags-y)
>>> diff --git a/drivers/pci/bus.c b/drivers/pci/bus.c
>>> new file mode 100644
>>> index 0000000..8215ee5
>>> --- /dev/null
>>> +++ b/drivers/pci/bus.c
>> missing copyright and licence
>> 
>> I do not remember who wrote it you, me or both
> 
> Should I use GPLv2-only or GPLv2-or-later license?
> 
I only wrote GPLv2-only


Best Regards,
J.
_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
