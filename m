Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from exprod5og108.obsmtp.com ([64.18.0.186])
 by merlin.infradead.org with smtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UjucP-0002ax-Co
 for barebox@lists.infradead.org; Tue, 04 Jun 2013 17:01:58 +0000
Message-ID: <51AE1D69.4050205@ge.com>
Date: Tue, 04 Jun 2013 18:01:29 +0100
From: Renaud Barbier <renaud.barbier@ge.com>
MIME-Version: 1.0
References: <1369926935-24159-1-git-send-email-renaud.barbier@ge.com>
 <20130601092018.GO32299@pengutronix.de> <51AC6286.5030001@ge.com>
In-Reply-To: <51AC6286.5030001@ge.com>
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
Subject: Re: [PATCH] gianfar: prevent resource conflict
To: Sascha Hauer <s.hauer@pengutronix.de>, barebox@lists.infradead.org

Hello Sacha,
I applied your patch and try it on our mpc8544 based board
with a few modification.
This board uses eTSEC1. This means all 3 regions have the same
base address.

I just did the following update to your patch.
It only maps the eTSEC registers and mdio bus registers.

  static int fsl_phy_init(void)
{
          add_generic_device("gfar-phy", 0, NULL, MDIO_BASE_ADDR, 0x1000,
                          IORESOURCE_MEM, NULL);
          return 0;
  }

  coredevice_initcall(fsl_phy_init);

   int fsl_eth_init(int num, struct gfar_info_struct *gf)
  {

          printf("FSL_ETH_INIT: num = %d, 0x%x\n", num - 1,
                          GFAR_BASE_ADDR + (num - 1) * 0x1000);
          add_generic_device("gfar", num - 1, NULL,
                          GFAR_BASE_ADDR + (num - 1) * 0x1000, 0x1000,
                          IORESOURCE_MEM, gf);

           return 0;
   }


I added a few debug messages in request_region and got:

barebox 2013.05.0-00706-g87df6ec-dirty #13 Tue Jun 4 17:17:34 BST 2013

Board: DA923RC

dev_request_mem_region:got resource
request_region:name = gfar-phy0, parent = 1ffa6494
request_region ok: 0xe0024000:0xe0024fff
gfar_phy_probe:phy->regs= e0024000, 0
gfar_phy_probe: id = 0
mdio_bus: miibus0: probed
...
FSL_ETH_INIT: num = 0, 0xe0024000
dev_request_mem_region:got resource
request_region:name = gfar0, parent = 1ffa6494
request_region: 0xe0024000:0xe0024fff conflicts with 0xe0024000:0xe0024fff
gfar_probe:priv->regs 00000000, 0
gfar_halt:regs = 00000000

Even though, two devices have been added, both have the same parent 
iomem and the same region is compared. A conflict is then detected.
When gfar_probe requests its Ethernet register region, NULL is returned.



_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
