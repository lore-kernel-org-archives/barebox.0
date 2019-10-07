Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from ironport.klsmartin.com ([212.211.191.11])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iHTnv-0006QL-8D
 for barebox@lists.infradead.org; Mon, 07 Oct 2019 14:16:05 +0000
From: "Middelschulte, Leif" <Leif.Middelschulte@klsmartin.com>
Date: Mon, 7 Oct 2019 14:15:39 +0000
Message-ID: <ec68b5aec8f0a144e9391dd1dfabe129ecdd4b6a.camel@klsmartin.com>
Content-Language: de-DE
Content-ID: <5E22AF952DDCEC498EE79B544CC5F2DB@klsmartin.com>
MIME-Version: 1.0
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Reply-To: "Middelschulte, Leif" <Leif.Middelschulte@klsmartin.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: erroneous behavior for iMX+GPT
To: "barebox@lists.infradead.org" <barebox@lists.infradead.org>

Hi,

setting up GPT on an iMX6, I noticed a small bug subject to CONFIG_PARTITION_DISK_EFI_GPT_NO_FORCE that leads to unparsed GPTs.

Background: The iMX supports the mmc user partition as bootmedia source too.

Problem: The (additional) filetype check[0] fails, if the given buffer contains multiple, subsequent file(type)s. The buffer might contain the beginning of a disk that contains i.e. a Barebox image
*and* a partition table. The function file_detect_type returns a single (first recognized) type[1]. In my case, it returns the Barebox image type.

There is a comment about this additional check noting it will be mandatory as it will be "[..] added to the EFI Spec. per Intel after v1.02.". Anybody can elaborate on that?
That feedback could help to understand why file_detect_partition_table is insufficient in this case.


[0] https://git.pengutronix.de/cgit/barebox/tree/common/partitions/efi.c#n372
[1] https://git.pengutronix.de/cgit/barebox/tree/common/filetype.c#n352

-- 
Kind Regards,

Leif Middelschulte
Software Development Engineer

KLS Martin GmbH + Co. KG,
A Company of the KLS Martin Group
Am Flughafen 18
79108 Freiburg, Germany

Phone +49 (761) 557 997-543
Fax   +49 (761) 557 997-520 
Web   leif.middelschulte@klsmartin.com
      www.klsmartin.com

Commercial Register: Freiburg im Breisgau HRA 4044
Managing directors: Michael Martin, Karl Leibinger, Christian Leibinger
General partner: KLS Martin Verwaltungsgesellschaft mbH
Commercial register: Stuttgart HRB 451316
Tax ID number: DE 237467280
 
This e-mail may contain confidential and/or privileged information. If you are not the intended recipient (or have received this e-mail in error) please notify the sender immediately and destroy this
e-mail. Any unauthorized copying, disclosure or distribution of the material in this e-mail is strictly forbidden.
_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
