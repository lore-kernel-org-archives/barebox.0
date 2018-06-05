Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from asavdk4.altibox.net ([109.247.116.15])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fQHHR-0002qW-0a
 for barebox@lists.infradead.org; Tue, 05 Jun 2018 19:06:06 +0000
Date: Tue, 5 Jun 2018 21:03:45 +0200
From: Sam Ravnborg <sam@ravnborg.org>
Message-ID: <20180605190345.GA32198@ravnborg.org>
References: <20180605181021.10467-1-o.rempel@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20180605181021.10467-1-o.rempel@pengutronix.de>
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
Subject: Re: [PATCH v1 1/3] MIPS: ath79: provide driver for Atheros ART
 partition
To: Oleksij Rempel <o.rempel@pengutronix.de>
Cc: barebox@lists.infradead.org, Oleksij Rempel <linux@rempel-privat.de>

Hi Oleksij

Some nitpicks.

On Tue, Jun 05, 2018 at 08:10:19PM +0200, Oleksij Rempel wrote:
> From: Oleksij Rempel <linux@rempel-privat.de>
> 
> this partition contains calibration data for WiFi and
> some board specific data, like MAC address.
> 
> For now we care only about MAC.
> 
> Signed-off-by: Oleksij Rempel <linux@rempel-privat.de>
> ---
> +static int art_read_mac(struct device_d *dev, const char *file)
> +{
> +	int fd, rbytes;
> +	struct ar9300_eeprom eeprom;
> +
> +	fd = open_and_lseek(file, O_RDONLY, 0x1000);
> +	if (fd < 0) {
> +		dev_err(dev, "Failed to open eeprom path %s %d\n",
> +		       file, -errno);
> +		return -errno;
> +	}
open_and_lseek says:
otherwise a negative error code is returned
So it is wrong to convert this to a positive errocode

> +
> +	rbytes = read_full(fd, &eeprom, sizeof(eeprom));
> +	close(fd);
> +	if (rbytes <= 0 || rbytes < sizeof(eeprom)) {
> +		dev_err(dev, "Failed to read %s\n", file);
> +		return -EIO;
> +	}
Because here you convert a positive number to a negative number.

> +
> +	dev_dbg(dev, "ART version: %x.%x\n",
> +		 eeprom.eeprom_version, eeprom.template_version);
> +	dev_dbg(dev, "mac: %02x:%02x:%02x:%02x:%02x:%02x\n",
> +	       eeprom.mac_addr[0],
> +	       eeprom.mac_addr[1],
> +	       eeprom.mac_addr[2],
> +	       eeprom.mac_addr[3],
> +	       eeprom.mac_addr[4],
> +	       eeprom.mac_addr[5]);
We should add support for %pM...
But this is not done, so the above is fine

> +
> +	if (!is_valid_ether_addr(&eeprom.mac_addr[0])) {
> +		dev_err(dev, "bad MAC addr\n");
> +		return -EILSEQ;
> +	}
> +
> +	return art_set_mac(dev, &eeprom);
> +}

	Sam

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
