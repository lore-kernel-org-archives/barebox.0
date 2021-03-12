Delivery-date: Fri, 12 Mar 2021 11:57:06 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lKfTd-0004Mf-Fu
	for lore@lore.pengutronix.de; Fri, 12 Mar 2021 11:57:06 +0100
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lKfTc-0007Eo-F4
	for lore@pengutronix.de; Fri, 12 Mar 2021 11:57:05 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To:From:
	Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=tL6jeNf0p7My8gz9ru0Jx0TwzOFK4fjzhhKfJTkO0dM=; b=eXzlb/2V48Lraj
	3/0gGJ26ZcqzxBcO3gWXD22p5WTprWwSm4a+ZuDD5QhhBkk0gWUcpRevZ1H7FnZUuXhdQ5uStePDD
	Yg14lyLsXTXjE1ShmeYZfZspWkj23Q96qfv1Opk+y7uMrVK4iNTWopvXlKaavMSXpx5SUEHwqrwau
	JQmHcqko5lW35TeTi8rp7HnAV7PICraU5vX9DSC5f3AFsCnaA3H0ib7z56oAUUx76NBmYP3nntYr4
	BR2Pd/BWGjIM37XaNBmB5nhPj4R8DdXvkz7nJtc8NWeG3k8oM9xQ1VmY0dw/95qu2zlk4JnPFiENM
	DF8KgtuxtwE4sK8ewtbQ==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lKfSb-00BE2I-W4; Fri, 12 Mar 2021 10:56:02 +0000
Received: from de-out1.bosch-org.com ([139.15.230.186])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lKfSV-00BE1k-GW
 for barebox@lists.infradead.org; Fri, 12 Mar 2021 10:55:58 +0000
Received: from fe0vm1650.rbesz01.com
 (lb41g3-ha-dmz-psi-sl1-mailout.fe.ssn.bosch.com [139.15.230.188])
 by fe0vms0186.rbdmz01.com (Postfix) with ESMTPS id 4DxjQx0nzvz1XLFjX
 for <barebox@lists.infradead.org>; Fri, 12 Mar 2021 11:55:53 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=de.bosch.com;
 s=key3-intmail; t=1615546553;
 bh=afkfjf0rNHOAMxlhDCI2HZ++2PuBUKSLDZIxt4RjCAU=; l=10;
 h=From:Subject:From:Reply-To:Sender;
 b=BhZGaPa9HWVv/cyWBQVN/hhUBtvDeY1bGmIUrsQHemXDS9+TaFQttpFO3KPSlF2R8
 pEGPV4cpR7ux2YFWnw0MIiL4wSJu0GHi9it+DZaQ0BOTkqKTJhGjvVVUkOTT/7l0/e
 KjvL3NI1QW+2eNyLcV+G8XgDFpTvgoQf20fi+QF8=
Received: from fe0vm7918.rbesz01.com (unknown [10.58.172.176])
 by fe0vm1650.rbesz01.com (Postfix) with ESMTPS id 4DxjQx0VwVz1yf
 for <barebox@lists.infradead.org>; Fri, 12 Mar 2021 11:55:53 +0100 (CET)
X-AuditID: 0a3aad10-e8dff7000000444e-93-604b48b84200
Received: from fe0vm1652.rbesz01.com ( [10.58.173.29])
 (using TLS with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (Client did not present a certificate)
 by fe0vm7918.rbesz01.com (SMG Outbound) with SMTP id D3.A1.17486.9B84B406;
 Fri, 12 Mar 2021 11:55:53 +0100 (CET)
Received: from FE-MBX2043.de.bosch.com (fe-mbx2043.de.bosch.com [10.3.231.53])
 by fe0vm1652.rbesz01.com (Postfix) with ESMTPS id 4DxjQw6rP8zV18
 for <barebox@lists.infradead.org>; Fri, 12 Mar 2021 11:55:52 +0100 (CET)
Received: from FE-MBX2042.de.bosch.com (10.3.231.52) by
 FE-MBX2043.de.bosch.com (10.3.231.53) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2176.2; Fri, 12 Mar 2021 11:55:52 +0100
Received: from FE-MBX2042.de.bosch.com ([fe80::8a5:f97e:ffde:bf70]) by
 FE-MBX2042.de.bosch.com ([fe80::8a5:f97e:ffde:bf70%5]) with mapi id
 15.01.2176.009; Fri, 12 Mar 2021 11:55:52 +0100
From: "Gittinger Joerg (XC-ECO/ESH2)" <Joerg.Gittinger@de.bosch.com>
To: "barebox@lists.infradead.org" <barebox@lists.infradead.org>
Thread-Topic: Aarch64 Qemu virt - crash
Thread-Index: AdcXKkgU1NnwUDzcRhGgxF+ARU5EdQ==
Date: Fri, 12 Mar 2021 10:55:52 +0000
Message-ID: <f9f47ca6b7cb4fe88344dea3c63b5d84@de.bosch.com>
Accept-Language: de-DE, en-US
Content-Language: de-DE
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.142.129.1]
MIME-Version: 1.0
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFrrOLMWRmVeSWpSXmKPExsXCZbVWVnenh3eCwYIdjBYnFvczOzB6bF5S
 H8AYxWWTkpqTWZZapG+XwJVx5tk+loJW2YpjB2MbGP9IdDFyckgImEhM+/OEHcQWEpjOJHGu
 X6yLkQvIvsMo8eDnK2YI5y2jxL2DT5khqvYxSnT0lIHYbAIuErPPnGUDsUUE7CV69u1nArGF
 BZQk+o/uZYKIq0u0/HzPDGHrSbxqngEWZxFQlTj9rJmxi5GDg1fAWuL9GVeQMKOArMSGDefB
 ypkFxCU2PfvOCnGogMSSPRBxCQFRiZeP/0HFFSSat61lhKjXkViw+xMbhK0tsWzha7B6XgFB
 iZMzn7BMYBSZhWTsLCQts5C0zELSsoCRZRWjaFqqQVmuuaWhhV5RUmpxlYGhXnJ+7iZGSNgL
 7GC83f1B7xAjEwfjIUYJDmYlEd4LL70ShHhTEiurUovy44tKc1KLDzFKc7AoifOq8GyMExJI
 TyxJzU5NLUgtgskycXBKNTBtWvOYg/PMk2M9m1Yd/Hrs1Vk2NenzmxjXzFFmc8p1M55vqvKL
 QWXxHLtNbn/aJBtU/73edoDt5h7Tavbl5zkeTnlcYWkr1Wc0Laz/9MNzpyvWRBa5WBx6uC9z
 E2/nzg0rr21jYTBdx8rDy6x11+3t9cuKjhf33zP+tVLzqP4mCXG3Lbny9X7HTjxyeSo/31Mh
 njPpbV0+89Fdl22fWDumzDEWXZwx57TA/Gw5g9uz5KcIJrDMqbKpLTogyZ01pb9gM9vnD7d4
 zd9fuyzkf2JHWoBk29OAz91rt/7/tHR3BP/J+6e/3ola+vBviIILwwOZPMWymtvsjvcfXOv6
 pGxhe8XD+rzwIvUatuWL6j6UKbEUZyQaajEXFScCAMrO5P7qAgAA
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210312_105555_722151_30E0880D 
X-CRM114-Status: GOOD (  11.41  )
X-BeenThere: barebox@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
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
X-SA-Exim-Connect-IP: 2001:8b0:10b:1:d65d:64ff:fe57:4e05
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=4.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Aarch64 Qemu virt - crash
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hi,

I'd like to check out bareboot. In the documentation I found that aarch64 QEMU virt target is supported. Therefore I wanted to build it and run it in the emulator. I checked out latest git and built it for aarch64. When running it in QEMU 
  $ qemu-system-aarch64 -m 2G -M virt -cpu cortex-a53 -kernel ../barebox/barebox -display none -serial stdio
I run into an exception:

-------- qemu output ---------
barebox 2021.02.0-jg-00106-g43a513fa8 #1 Mon Mar 8 15:56:47 CET 2021


Board: ARM QEMU virt64
DABT (current EL) exception (ESR 0x9600004b) at 0x0000000000000000
elr: 000000004100d754 lr : 000000004100d740
x0 : 0000000000000001 x1 : 00000000000000f0
x2 : 00000000bffefdbc x3 : 00000000ffffffff
x4 : 0000000000000008 x5 : 0000000000000000
x6 : 0000000040c07ad0 x7 : 0000000000000000
x8 : 0000000040c07ad0 x9 : 00000000bffefe90
...
-----------------------------------

I debugged it in gdb and set a breakpoint at the ELR value. Backtrace shows this:

-----------------------------------
#0  flash_write8 (addr=0x0, value=240 '\360') at drivers/mtd/nor/cfi_flash.h:258
#1  flash_write_word (addr=0x0, datum=240, info=0x40c07ad0) at drivers/mtd/nor/cfi_flash.h:336
#2  flash_write_cmd (info=info@entry=0x40c07ad0, sect=sect@entry=0, offset=offset@entry=0, cmd=cmd@entry=240) at drivers/mtd/nor/cfi_flash.c:837
#3  0x000000004100d940 in flash_detect_width (info=info@entry=0x40c07ad0, qry=qry@entry=0xbffefe90) at drivers/mtd/nor/cfi_flash.c:244
#4  0x000000004100dc60 in flash_detect_cfi (qry=0xbffefe90, info=0x40c07ad0) at drivers/mtd/nor/cfi_flash.c:287
#5  flash_detect_size (info=0x40c07ad0) at drivers/mtd/nor/cfi_flash.c:321
#6  cfi_probe_one (num=0, info=0x40c07ad0) at drivers/mtd/nor/cfi_flash.c:972
#7  cfi_probe (dev=0x40c07910) at drivers/mtd/nor/cfi_flash.c:1013
#8  0x000000004100c188 in device_probe (dev=0x40c07910, dev@entry=0x40c07998) at drivers/base/driver.c:91
#9  0x000000004100c258 in match (drv=drv@entry=0x40c07910, dev=0x40c07998, dev@entry=0x40c07910) at drivers/base/driver.c:164
#10 0x000000004100c574 in register_device (new_device=0x40c07910) at drivers/base/driver.c:209
#11 0x000000004100ca28 in add_generic_device (devname=devname@entry=0x4102b5d0 "cfi_flash", id=id@entry=0, resname=resname@entry=0x0, start=start@entry=0,
    size=size@entry=134217728, flags=flags@entry=512, pdata=pdata@entry=0x0) at drivers/base/resource.c:78
#12 0x0000000041027260 in add_cfi_flash_device (flags=0, size=134217728, start=0, id=0) at include/driver.h:267
#13 virt_env_init () at arch/arm/boards/qemu-virt64/init.c:30
#14 0x0000000041001610 in start_barebox () at common/startup.c:412
#15 0x00000000410289a0 in barebox_non_pbl_start (membase=1090689334, memsize=<optimized out>, boarddata=0x41035000 <__barebox_cmd_drvinfo+8>)
    at arch/arm/cpu/start.c:246
#16 0x00000000410289d0 in __barebox_arm_entry ()
-----------------------------------

Apparently the NOR cfi driver tries to figure out the flash width by writing to it. In QEMU aarch64 virt machine, the flash starts at 0x0, so the address is correct. In barebox config the "QEMU arm64 virt machine" is selected. I tried with specifying a "-pflash ..." parameter at QEMU command line but still got the same exception. MMU (SCTLR.M) is turned on - therefore I wonder why I get this exception. It seems that the MMU region for the flash is not or not correctly set up when the memory access occurs..? Or do I do something wrong? Please let me know how I get it running.

Thanks + Regards
Joerg

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

