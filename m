Delivery-date: Fri, 12 Mar 2021 13:25:40 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lKgrM-0004T8-IW
	for lore@lore.pengutronix.de; Fri, 12 Mar 2021 13:25:40 +0100
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lKgrL-0000bt-JD
	for lore@pengutronix.de; Fri, 12 Mar 2021 13:25:40 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:Message-ID:Date:
	Subject:CC:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=kqCICBYiD/ZJKRh9POwBQwd9skUj8spg8vVUlp7FySg=; b=Hck57lYEKaHrdN+GWheIP9W8k
	jSjx5b4QtaDgMIl/fZaU8+43QMr7Jx1ca7MUD0+R6SfxHA3673N6gUXC5xgWGN2W+A3hZbnhxI9jk
	JmSXvqKH1yTh3BYIQxKA7AlOBrue+BiSV9RU/BIM715GaVoWGKVGbA/FHydsduCLj0XQY195xHzIY
	AJk/4YSF13gtwkmICgXJj9wQcnoUe6fhGuonkmwgZhyioe3/qsMsejofnAM/zhajG1QRPzqObhjnS
	McX8IWlTCNU4NN8zABXZkvwceBD1LGWtQ24yzU0SvucnhIa/S/bj177uic0xopvVrNNaDK1JHgk3R
	IC103irSQ==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lKgph-00BO7q-GA; Fri, 12 Mar 2021 12:23:57 +0000
Received: from de-out1.bosch-org.com ([139.15.230.186])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lKgpY-00BO77-Hy
 for barebox@lists.infradead.org; Fri, 12 Mar 2021 12:23:51 +0000
Received: from fe0vm1650.rbesz01.com
 (lb41g3-ha-dmz-psi-sl1-mailout.fe.ssn.bosch.com [139.15.230.188])
 by si0vms0216.rbdmz01.com (Postfix) with ESMTPS id 4DxlNL3P6rz1XLGSh;
 Fri, 12 Mar 2021 13:23:46 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=de.bosch.com;
 s=key3-intmail; t=1615551826;
 bh=W2gVcIm5BEFSId34WO3JhmseQh9/Mh4X8jqXLza0nc0=; l=10;
 h=From:Subject:From:Reply-To:Sender;
 b=bMycvVHTFAnz/9JGK9VZM9sWpWEcnvIKVfMxRtPZUm59OS2Zt26BCLlUTbtCjYc+W
 nU67Feqh7ltlXJIYbco/5ke73P4PcHU5+b8fU/82kveIpImuTF6ds8lVM7zgo8vtMm
 eDKyN1VgC3/buGsEwzzgsW6tJhqv0Pyd+4ygMpmg=
Received: from si0vm2082.rbesz01.com (unknown [10.58.172.176])
 by fe0vm1650.rbesz01.com (Postfix) with ESMTPS id 4DxlNL36cVz1QZ;
 Fri, 12 Mar 2021 13:23:46 +0100 (CET)
X-AuditID: 0a3aad16-1d9ff7000000033d-0c-604b5d52abbb
Received: from fe0vm1652.rbesz01.com ( [10.58.173.29])
 (using TLS with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (Client did not present a certificate)
 by si0vm2082.rbesz01.com (SMG Outbound) with SMTP id BB.0C.00829.25D5B406;
 Fri, 12 Mar 2021 13:23:46 +0100 (CET)
Received: from FE-MBX2042.de.bosch.com (fe-mbx2042.de.bosch.com [10.3.231.52])
 by fe0vm1652.rbesz01.com (Postfix) with ESMTPS id 4DxlNL2JwpzV1B;
 Fri, 12 Mar 2021 13:23:46 +0100 (CET)
Received: from FE-MBX2042.de.bosch.com (10.3.231.52) by
 FE-MBX2042.de.bosch.com (10.3.231.52) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2176.2; Fri, 12 Mar 2021 13:23:46 +0100
Received: from FE-MBX2042.de.bosch.com ([fe80::8a5:f97e:ffde:bf70]) by
 FE-MBX2042.de.bosch.com ([fe80::8a5:f97e:ffde:bf70%5]) with mapi id
 15.01.2176.009; Fri, 12 Mar 2021 13:23:46 +0100
From: "Gittinger Joerg (XC-ECO/ESH2)" <Joerg.Gittinger@de.bosch.com>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>, "barebox@lists.infradead.org"
 <barebox@lists.infradead.org>
CC: Rouven Czerwinski <r.czerwinski@pengutronix.de>
Thread-Topic: Aarch64 Qemu virt - crash
Thread-Index: AdcXKkgU1NnwUDzcRhGgxF+ARU5Edf///ECA///ezwA=
Date: Fri, 12 Mar 2021 12:23:45 +0000
Message-ID: <091631c2e041496996d0904f0a6c8af7@de.bosch.com>
References: <f9f47ca6b7cb4fe88344dea3c63b5d84@de.bosch.com>
 <33279efb-c168-04a4-10fe-8492d426679a@pengutronix.de>
In-Reply-To: <33279efb-c168-04a4-10fe-8492d426679a@pengutronix.de>
Accept-Language: de-DE, en-US
Content-Language: de-DE
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.142.129.1]
MIME-Version: 1.0
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFupikeLIzCtJLcpLzFFi42LhslorqxsU651g8O20uMXCDzuYLE4s7me2
 +LZ6A5sDs8fmJfUe/X8NApiiuGxSUnMyy1KL9O0SuDJaZ55lLJgjV3F42S72BsYdsl2MnBwS
 AiYS07fvY+li5OIQEpjOJPHo7yFmCGcXo8Syz5+gMm8ZJX4+u88M0iIksI9RYuvCSBCbTcBF
 YvaZs2wgtohApsTDze/AapgFjCV6Zm5hBLGFBdQkPu7bxwxRoy7R8vM9lG0l8eL/NBYQm0VA
 VWLqok9g9bwC1hIHPlxlhNhVLHFowluwGk4BJ4kPnXOYQGxGAVmJDRvOQ+0Sl9j07DsrxDsC
 Ekv2QMQlBEQlXj7+BxVXkGjethZoJgdQvabE+l36EK2KElO6H7JDrBWUODnzCcsERvFZSKbO
 QuiYhaRjFpKOBYwsqxhFizMNynKNDCyM9IqSUourDAz1kvNzNzFCoktsB+P2rg96hxiZOBgP
 MUpwMCuJ8F546ZUgxJuSWFmVWpQfX1Sak1p8iFGag0VJnFeFZ2OckEB6YklqdmpqQWoRTJaJ
 g1Oqgcn01GeGvC3Gp989LOV172rZJdWnfCRnxsFVx3adO2H29ZNbgfLcaM/3FZpzT7oypz50
 if9ntTbyTKbCewVxK7fKGUsqV13ZweoetubAgzzbotb/O/ht47dVdbxQXt2pnO5iNP/WBpaH
 H94c1CtlZTnJavX/78XKGqfnAqvTvhU5t1fpT+jdUa5zsenjXLFZyaXPG4yyw0O3PHpu01Rv
 dovl1rR3GeUr7y9L/CX366BpSHdyyYpQ1ZwL2YHJt/W3xqmIKxge2Mo7WWz3rae7JyixitZ8
 Ujx00Obik+z4G+ablkV0NG9q++D59aWdia2IZH5yt43LeYs3f7gnCmbUqMlMP3HYwa/iepnh
 /tpL3EosxRmJhlrMRcWJAKF6ebQdAwAA
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210312_122349_099974_0892F53C 
X-CRM114-Status: GOOD (  15.31  )
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
X-Spam-Status: No, score=-2.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: AW: Aarch64 Qemu virt - crash
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hi Ahmad,

>> Apparently the NOR cfi driver tries to figure out the flash width by writing to it. In QEMU aarch64 virt machine, the flash starts at 0x0, so the address is correct. 
>> In barebox config the "QEMU arm64 virt machine" is selected. I tried with specifying a "-pflash ..." parameter at QEMU command line but still got the same exception. 
>> MMU (SCTLR.M) is turned on - therefore I wonder why I get this exception. It seems that the MMU region for the flash is not or not correctly set up when the memory 
>> access occurs..? Or do I do something wrong? Please let me know how I get it running.

> There was recent rework on this platform, please pull again. This particular issue is worked around with
> 767edcc58757 ("mtd: cfi-flash: fail gracefully instead of crashing on NULL page")

Yes, cherry-picking this change solved the crash. Thanks.

> The root cause is that when MMU is enabled, barebox traps NULL pointer dereference and accessing the first page of a cfi-flash mapped at zero looks just like one.
>
> The proper fix would be to remap the cfi-flash for this board, but no one has come around to do this yet. An alternative if you need to pass data to barebox is to use 
> VirtIO Block devices. They need no further configuration than qemu command line parameters. That's in next as well.

BTW, I tried disabling MMU in config as well as Rouven suggested (thanks). But this gives me a linker error:

---------------------------------------------
...
  LD      barebox
aarch64-linux-gnu-ld: common/uimage.o: in function `zero_page_memcpy':
/home/gjt2abt/src/barebox/include/zero_page.h:47: undefined reference to `zero_page_access'
/home/gjt2abt/src/barebox/include/zero_page.h:47:(.text.uimage_sdram_flush+0xc4): relocation truncated to fit: R_AARCH64_CALL26 against undefined symbol `zero_page_access'
aarch64-linux-gnu-ld: /home/gjt2abt/src/barebox/include/zero_page.h:49: undefined reference to `zero_page_faulting'
/home/gjt2abt/src/barebox/include/zero_page.h:49:(.text.uimage_sdram_flush+0xd8): relocation truncated to fit: R_AARCH64_CALL26 against undefined symbol `zero_page_faulting'
aarch64-linux-gnu-ld: /home/gjt2abt/src/barebox/include/zero_page.h:47: undefined reference to `zero_page_access'
/home/gjt2abt/src/barebox/include/zero_page.h:47:(.text.file_to_sdram+0xd8): relocation truncated to fit: R_AARCH64_CALL26 against undefined symbol `zero_page_access'
aarch64-linux-gnu-ld: /home/gjt2abt/src/barebox/include/zero_page.h:49: undefined reference to `zero_page_faulting'
/home/gjt2abt/src/barebox/include/zero_page.h:49:(.text.file_to_sdram+0xf0): relocation truncated to fit: R_AARCH64_CALL26 against undefined symbol `zero_page_faulting'
make: *** [Makefile:915: barebox] Error 1
---------------------------------------------

Regards,
Joerg
_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

