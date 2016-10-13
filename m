Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.haslerrail.com ([212.103.73.117])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1bugDu-0001gz-Hv
 for barebox@lists.infradead.org; Thu, 13 Oct 2016 13:39:03 +0000
From: Trostel Alain <Alain.Trostel@haslerrail.com>
Date: Thu, 13 Oct 2016 13:38:36 +0000
Message-ID: <F6D4D53A3E6A8043A8517794EE9C52320CE989@HRSRV03.haslerrail.net>
Content-Language: en-US
MIME-Version: 1.0
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
Subject: How to configure and enable the barebox state?
To: "barebox@lists.infradead.org" <barebox@lists.infradead.org>

Hi,

I would like to configure and enable the barebox state. My assumption is
that I need to change the following device tree for my Phytec AM335x
SOM:

arch/arm/dts/am335x-phytec-phycore-som.dts

But from the documentation
(http://www.barebox.org/doc/latest/devicetree/bindings/barebox/barebox,state.html) it is not clear to me where exactly I need to add the variable node example. Furthermore, I have check that the 'CONFIG_OFDEVICE' is enabled.
So, where is the correct place to add the variable node configuration
and what needs to be enabled in barebox?

Best regards,
Alain
_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
