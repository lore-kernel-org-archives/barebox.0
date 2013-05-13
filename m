Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from optimeas.de ([78.46.18.2])
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UboMo-0007mW-B7
 for barebox@lists.infradead.org; Mon, 13 May 2013 08:44:23 +0000
From: "Dr. Patrick Langfeld" <patrick.langfeld@optimeas.de>
Date: Mon, 13 May 2013 08:43:58 +0000
In-Reply-To: <20130513045912.GB32299@pengutronix.de>
Message-Id: <em693f4276-887c-4945-ba22-230c24dc89b1@plh001-think>
Mime-Version: 1.0
Reply-To: "Dr. Patrick Langfeld" <patrick.langfeld@optimeas.de>
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
Subject: Re[2]: Error when starting kernel with devicetree on tx53
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

Thanks Sascha,
but whats wrong with the devicetree blob?
I mean the same dtb is working, when I boot the board with uboot.

I use ptxdist to build the kernel image and to build the tx53.dtb from 
tx53.dts

Are there some special settings to build the dtb for use with barebox?

What can be wrong with the dtb.

Best regards, Patrick


------ Originalnachricht ------
Von: "Sascha Hauer" <s.hauer@pengutronix.de>
An: "Dr. Patrick Langfeld" <patrick.langfeld@optimeas.de>
Cc: barebox@lists.infradead.org
Gesendet: 13.05.2013 06:59:12
Betreff: Re: Error when starting kernel with devicetree on tx53
>On Sun, May 12, 2013 at 06:12:11PM +0000, Dr. Patrick Langfeld wrote:
>>
>>  Loading OS U-Boot uImage '/mnt/tftp/uImage'
>>  OS image is at 0x70008000-0x70233917
>>  Loading devicetree from '/mnt/tftp/tx53.dtb'
>>  /mnt/tftp/tx53.dtb is not an oftree but unknown
>>  bad magic: 0x0000f085
>
>Your problem is that this not a devicetree blob.
>Of course barebox should not crash then, this seems to be a bug.
>
>Sascha
>
>--
>Pengutronix e.K. | |
>Industrial Linux Solutions | http://www.pengutronix.de/ |
>Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0 |
>Amtsgericht Hildesheim, HRA 2686 | Fax: +49-5121-206917-5555 |
>


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
