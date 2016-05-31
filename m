Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1b7dgQ-0001qi-BA
 for barebox@lists.infradead.org; Tue, 31 May 2016 07:01:47 +0000
Date: Tue, 31 May 2016 09:01:24 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20160531070124.GC31666@pengutronix.de>
References: <1464356935-21500-1-git-send-email-yegorslists@googlemail.com>
 <20160530053359.GV31666@pengutronix.de>
 <CAGm1_kv9SNGG45Eb6GUvPAKZ0PAZtGiJPfXadd6ZLwY_VS94CQ@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAGm1_kv9SNGG45Eb6GUvPAKZ0PAZtGiJPfXadd6ZLwY_VS94CQ@mail.gmail.com>
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
Subject: Re: [PATCH] Add support for Baltos systems
To: Yegor Yefremov <yegorslists@googlemail.com>
Cc: barebox <barebox@lists.infradead.org>

On Mon, May 30, 2016 at 11:46:12AM +0200, Yegor Yefremov wrote:
> On Mon, May 30, 2016 at 7:33 AM, Sascha Hauer <s.hauer@pengutronix.de> wrote:
> > On Fri, May 27, 2016 at 03:48:55PM +0200, yegorslists@googlemail.com wrote:
> >> From: Yegor Yefremov <yegorslists@googlemail.com>
> >>
> >> OnRISC Baltos devices are based on a am335x SoC and can be booted
> >> either from MMC or NAND.
> >>
> >> Signed-off-by: Yegor Yefremov <yegorslists@googlemail.com>
> >> ---
> >
> >> +
> >> +typedef struct _BSP_VS_HWPARAM
> >> +{
> >> +        uint32_t Magic;
> >> +        uint32_t HwRev;
> >> +        uint32_t SerialNumber;
> >> +        char PrdDate[11];
> >> +        uint16_t SystemId;
> >> +        uint8_t MAC1[6];
> >> +        uint8_t MAC2[6];
> >> +        uint8_t MAC3[6];
> >> +} __attribute__ ((packed)) BSP_VS_HWPARAM;
> >> +
> >> +BSP_VS_HWPARAM hw_param;
> >
> > No typedef for struct types please.
> 
> Will remove.
> 
> >> +static void baltos_validate_eeprom(void)
> >> +{
> >> +     printf("Baltos: incorrect magic number (0x%x) in EEPROM\n",
> >> +                     hw_param.Magic);
> >> +
> >> +     /* fill default values */
> >> +     hw_param.SystemId = 210;
> >> +
> >> +     hw_param.MAC1[0] = 0x00;
> >> +     hw_param.MAC1[1] = 0x00;
> >> +     hw_param.MAC1[2] = 0x00;
> >> +     hw_param.MAC1[3] = 0x00;
> >> +     hw_param.MAC1[4] = 0x00;
> >> +     hw_param.MAC1[5] = 0x01;
> >> +
> >> +     hw_param.MAC2[0] = 0x00;
> >> +     hw_param.MAC2[1] = 0x00;
> >> +     hw_param.MAC2[2] = 0x00;
> >> +     hw_param.MAC2[3] = 0x00;
> >> +     hw_param.MAC2[4] = 0x00;
> >> +     hw_param.MAC2[5] = 0x02;
> >> +
> >> +     hw_param.MAC3[0] = 0x00;
> >> +     hw_param.MAC3[1] = 0x00;
> >> +     hw_param.MAC3[2] = 0x00;
> >> +     hw_param.MAC3[3] = 0x00;
> >> +     hw_param.MAC3[4] = 0x00;
> >> +     hw_param.MAC3[5] = 0x03;
> >> +}
> >> +
> >> +static int baltos_read_eeprom(void)
> >> +{
> >> +     size_t size;
> >> +     char *buf, var_buf[32];
> >> +     int rc;
> >> +     unsigned char mac_addr[6];
> >> +
> >> +     rc = read_file_2("/dev/eeprom0", &size, (void *)&buf, sizeof(hw_param));
> >> +     if (rc && rc != -EFBIG) {
> >> +             return rc;
> >> +     }
> >> +
> >> +     memcpy(&hw_param, buf, sizeof(hw_param));
> >> +
> >> +     free(buf);
> >> +
> >> +     if (hw_param.Magic != 0xDEADBEEF) {
> >
> > The magic for a valid EEPROM is 0xdeadbeef? What a poor choice, this
> > value is commonly used for *invalid* values.
> 
> We use this scheme since years, so this cannot be changed now.
> 
> >> +             baltos_validate_eeprom();
> >
> > When you can't find a valid MAC Address in the EEPROM then you should
> > just return here. barebox will then use a random MAC Address.
> 
> Will do.
> 
> >> +     }
> >> +
> >> +     sprintf(var_buf, "%d", hw_param.SystemId);
> >> +     globalvar_add_simple("board.id", var_buf);
> >> +
> >> +     /* setup MAC1 */
> >> +     mac_addr[0] = hw_param.MAC1[0];
> >> +     mac_addr[1] = hw_param.MAC1[1];
> >> +     mac_addr[2] = hw_param.MAC1[2];
> >> +     mac_addr[3] = hw_param.MAC1[3];
> >> +     mac_addr[4] = hw_param.MAC1[4];
> >> +     mac_addr[5] = hw_param.MAC1[5];
> >> +
> >> +     eth_register_ethaddr(0, mac_addr);
> >> +
> >> +     /* setup MAC2 */
> >> +     mac_addr[0] = hw_param.MAC2[0];
> >> +     mac_addr[1] = hw_param.MAC2[1];
> >> +     mac_addr[2] = hw_param.MAC2[2];
> >> +     mac_addr[3] = hw_param.MAC2[3];
> >> +     mac_addr[4] = hw_param.MAC2[4];
> >> +     mac_addr[5] = hw_param.MAC2[5];
> >> +
> >> +     eth_register_ethaddr(1, mac_addr);
> >> +
> >> +     return 0;
> >> +}
> >
> >> +
> >> +&i2c1 {
> >> +     pinctrl-names = "default";
> >> +     pinctrl-0 = <&i2c1_pins>;
> >> +
> >> +     status = "okay";
> >> +     clock-frequency = <1000>;
> >
> > 1kHz? This looks suspicous. Shouldn't this be 100000 or 400000?
> 
> First we used 100KHz, but under some circumstances it turned out, that
> SoC <-> PMIC communication got stuck and as a result CPU was running
> with lower frequency. So after more testing it turned out, that 1KHz
> is the most "stable" frequency It is only important that these first
> communication steps occur at 1KHz, after this any supported speed is
> stable.

Ok, so it's really 1000Hz. Note that if you start Linux with the barebox
device tree you will end up with 1000Hz under Linux aswell, so it might
be worth looking for another solution to this problem.

Sascha

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
