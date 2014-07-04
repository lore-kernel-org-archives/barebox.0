Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from v1423.vcdns.de ([88.80.200.154])
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1X30UP-00084G-UH
 for barebox@lists.infradead.org; Fri, 04 Jul 2014 10:13:10 +0000
Received: from [192.168.0.176] (p5DD065DD.dip0.t-ipconnect.de [93.208.101.221])
 by v1423.vcdns.de (Postfix) with ESMTPSA id 5D7C41856951C
 for <barebox@lists.infradead.org>; Fri,  4 Jul 2014 12:12:46 +0200 (CEST)
Message-ID: <53B67E1D.6080607@ma-info.de>
Date: Fri, 04 Jul 2014 12:12:45 +0200
From: Frede Florian <florian.frede@ma-info.de>
MIME-Version: 1.0
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="iso-8859-15"; Format="flowed"
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Problems with pyhBoard-Wega-AM335x
To: barebox@lists.infradead.org

Hello,

I like to update from barebox 2013.11 to barebox 2014.06.0 with the =

phyBoard-Wega-AM335x. After reconfigure the barebox I get the error:

      LD images/start_am33xx_phytec_phycore_sram.pbl
    arch/arm/boards/built-in-pbl.o: In function `pcm051_board_init':
    :(.text.pcm051_board_init+0x94): undefined reference to
    `__dtb_am335x_phytec_phycore_start'
    make[2]: *** [images/start_am33xx_phytec_phycore_sram.pbl] Error 1
    make[1]: *** [images] Error 2


Thanks for Helping

Florian

-- =

Best regards / Mit freundlichen Gr=FC=DFen
Florian Frede
____________________________________________
company name: Dr. Mergenthaler GmbH & Co. KG
contact:      Dipl. Informatiker Florian Frede
position:     Embedded Software Engineer
street:       Lilienthalstra=DFe 14
zip code:     89231
city:         Neu-Ulm
country:      Germany
fon:          +49 (0)7 31 - 15 97 90 40
fax:          +49 (0)7 31 - 15 97 90 46
mailto:       florian.frede@ma-info.de
internet:     www.ma-info.de
____________________________________________
Dr. Mergenthaler GmbH & Co. KG
Sitz Neu-Ulm, Registergericht Memmingen, HRA12084
Gesch=E4ftsf=FChrer: Dr. Detlev Mergenthaler
pers=F6nlich haftende Gesellschafterin:
Dr. Mergenthaler Verwaltungsgesellschaft mbH
Sitz Neu-Ulm, Registergericht Memmingen, HRA14622
Steuer-Nr. 151/156/03504
Ust-Id-Nr. DE237130366
____________________________________________
Diese E-Mail einschlie=DFlich ihrer Anh=E4nge enth=E4lt vertrauliche und/od=
er rechtlich gesch=FCtzte Informationen. Wenn Sie nicht der richtige Adress=
at sind oder diese E-Mail irrt=FCmlich erhalten haben, informieren Sie bitt=
e sofort den Absender und vernichten Sie diese E-Mail. Das unerlaubte Kopie=
ren sowie die unbefugte Weitergabe dieser Mail oder von Teilen dieser Mail =
ist nicht gestattet.
---
This e-mail including its attachments contains confidential and/or privileg=
ed information. If you are not the intended recipient or have received this=
 e-mail in error please, notify the sender immediately and destroy this e-m=
ail. Any unauthorised copying, disclosure or distribution of  the material =
in this e-mail or of parts hereof is strictly forbidden.


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
