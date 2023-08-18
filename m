Delivery-date: Fri, 18 Aug 2023 13:39:27 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qWxpA-009NGH-3N
	for lore@lore.pengutronix.de; Fri, 18 Aug 2023 13:39:27 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qWxp7-0004kC-Vq
	for lore@pengutronix.de; Fri, 18 Aug 2023 13:39:26 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Message-ID:References:In-Reply-To:Subject:To:From:
	Date:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=p6JhqtF94iFmjdMOQ5YKLx9wib/ZzQ4McD17RIcsPps=; b=xDkCO2adZhJ2PgZoopz+aiE49m
	U5aQJkk5tzYfaWdNfKutBbmLrvw8JW1x3MNqUrMxF3PYBaupbcMh+TncL21TpOy+d5YlzVaA6pU5q
	MN/z10DNHEl8DAi98wjiKkuJmKz1skKNPnhrX5jgtZ/4k0gEm9LpeqxMA/W3I99NXbv6CB5WFDBES
	tGqbkCaFZbxEKIf6Eo2Qfac9YhYKZ7/L0gBmQUjUgKxkk+CofrChh9fbfbJVSSWHuXbIBvPGnNQFL
	8KJ/jPx5c0r8sbj43XSWesfyodBuWEv3Dm3Wc4uqZ8kwpXMk7PX6d+ThYBx8ybc1//gJHPUJZVtoU
	aozuwPoA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qWxnT-008mew-1p;
	Fri, 18 Aug 2023 11:37:43 +0000
Received: from relay8-d.mail.gandi.net ([2001:4b98:dc4:8::228])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qWxnO-008mZm-2V
	for barebox@lists.infradead.org;
	Fri, 18 Aug 2023 11:37:41 +0000
Received: by mail.gandi.net (Postfix) with ESMTPSA id 27F211BF208;
	Fri, 18 Aug 2023 11:37:31 +0000 (UTC)
Date: Fri, 18 Aug 2023 13:37:27 +0200
From: Jules Maselbas <jmaselbas@zdiv.net>
To: barebox@lists.infradead.org, Sascha Hauer <sha@pengutronix.de>,
 Jules Maselbas <jmaselbas@kalray.eu>
User-Agent: K-9 Mail for Android
In-Reply-To: <20230818062748.GM5650@pengutronix.de>
References: <20230816093945.19974-1-jmaselbas@kalray.eu> <20230816093945.19974-7-jmaselbas@kalray.eu> <20230818062748.GM5650@pengutronix.de>
Message-ID: <FC4EFE3F-1EA7-4977-B63D-AEE785F68878@zdiv.net>
MIME-Version: 1.0
Content-Type: text/plain;
 charset=utf-8
Content-Transfer-Encoding: quoted-printable
X-GND-Sasl: jmaselbas@zdiv.net
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230818_043739_108638_6897F6F3 
X-CRM114-Status: GOOD (  24.66  )
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
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH v2 7/7] mci: Add dwcmshc-sdhci driver
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)



On August 18, 2023 8:27:48 AM GMT+02:00, Sascha Hauer <sha@pengutronix=2Ed=
e> wrote:
> Hi Jules,
>=20
> Some small things inline=2E
>=20
>=20
> On Wed, Aug 16, 2023 at 11:39:45AM +0200, Jules Maselbas wrote:
> > +#include "sdhci=2Eh"
> > +
> > +#define CARD_STATUS_MASK (0x1e00)
> > +#define CARD_STATUS_TRAN (4 << 9)
> > +static int dwcmshc_mci_send_cmd(struct mci_host *mci, struct mci_cmd =
*cmd,
> > +				struct mci_data *data);
> > +
> > +struct dwcmshc_host {
> > +	struct mci_host mci;
> > +	struct sdhci sdhci;
> > +	unsigned int in_abort_sequence;
> > +};
> > +
> > +#define priv_from_mci_host(h) container_of(h, struct dwcmshc_host, mc=
i)
>=20
> Writing this as static inline function immediately makes the type of 'h'
> clear=2E
ack

>=20
> > +
> > +static void mci_setup_cmd(struct mci_cmd *p, unsigned int cmd, unsign=
ed int arg,
> > +			  unsigned int response)
> > +{
> > +	p->cmdidx =3D cmd;
> > +	p->cmdarg =3D arg;
> > +	p->resp_type =3D response;
> > +}
> > +
> > +static int do_abort_sequence(struct mci_host *mci, struct mci_cmd *cu=
rrent_cmd)
> > +{
> > +	int ret =3D 0;
> > +	struct dwcmshc_host *host =3D priv_from_mci_host(mci);
> > +	struct mci_cmd cmd;
> > +	u64 start;
> > +
> > +	host->in_abort_sequence =3D 1;
> > +
> > +	mci_setup_cmd(&cmd, MMC_CMD_STOP_TRANSMISSION, 0, MMC_RSP_R1b);
> > +	ret =3D dwcmshc_mci_send_cmd(mci, &cmd, NULL);
> > +	if (ret) {
> > +		dev_err(host->mci=2Ehw_dev, "Abort failed at first cmd12!\n");
> > +		goto out;
> > +	}
> > +	mci_setup_cmd(&cmd, MMC_CMD_SEND_STATUS, mci->mci->rca << 16,
> > +		      MMC_RSP_R1);
> > +	ret =3D dwcmshc_mci_send_cmd(mci, &cmd, NULL);
> > +	if (ret) {
> > +		dev_err(host->mci=2Ehw_dev, "Abort failed at first cmd13!\n");
> > +		goto out;
> > +	}
> > +
> > +	if ((cmd=2Eresponse[0] & CARD_STATUS_MASK) =3D=3D CARD_STATUS_TRAN)
> > +		goto out; /* All is OK! */
> > +
> > +	mci_setup_cmd(&cmd, MMC_CMD_STOP_TRANSMISSION, 0, MMC_RSP_R1b);
> > +	ret =3D dwcmshc_mci_send_cmd(mci, &cmd, NULL);
> > +	if (ret) {
> > +		dev_err(host->mci=2Ehw_dev, "Abort failed at second cmd12!\n");
> > +		goto out;
> > +	}
> > +
> > +	mci_setup_cmd(&cmd, MMC_CMD_SEND_STATUS, mci->mci->rca << 16,
> > +		      MMC_RSP_R1);
> > +	ret =3D dwcmshc_mci_send_cmd(mci, &cmd, NULL);
> > +	if (ret) {
> > +		dev_err(host->mci=2Ehw_dev, "Abort failed at second cmd13!\n");
> > +		goto out;
> > +	}
> > +
> > +	if ((cmd=2Eresponse[0] & CARD_STATUS_MASK) =3D=3D CARD_STATUS_TRAN) =
{
> > +		goto out; /* All is OK! */
> > +	} else {
> > +		dev_err(host->mci=2Ehw_dev,
> > +			"Abort sequence failed to put card in TRAN state!\n");
> > +		ret =3D 1;
>=20
> This should be an error code=2E
ack, not sure which error code is the most appropriated here, I am going t=
o use EPROTO or EIO
>=20
> > +		goto out;
> > +	}
> > +
> > +out:
> > +	/* Perform SW reset if in abort sequence */
> > +	sdhci_write8(&host->sdhci, SDHCI_SOFTWARE_RESET,
> > +		       SDHCI_RESET_DATA | SDHCI_RESET_CMD);
> > +	start =3D get_time_ns();
> > +	while (sdhci_read8(&host->sdhci, SDHCI_SOFTWARE_RESET) !=3D 0) {
> > +		if (is_timeout(start, 50 * MSECOND)) {
> > +			dev_err(host->mci=2Ehw_dev,
> > +				"SDHCI data reset timeout\n");
> > +			break;
> > +		}
> > +	}
> > +	host->in_abort_sequence =3D 0;
> > +	return ret;
> > +}
> > +
> > +static int dwcmshc_mci_send_cmd(struct mci_host *mci, struct mci_cmd =
*cmd,
> > +				struct mci_data *data)
> > +{
> > +	struct dwcmshc_host *host =3D priv_from_mci_host(mci);
> > +	dma_addr_t dma =3D SDHCI_NO_DMA;
> > +	u32 mask, command, xfer;
> > +	int ret;
> > +
> > +	if (cmd->cmdidx =3D=3D MMC_CMD_STOP_TRANSMISSION
> > +	    && host->in_abort_sequence =3D=3D 0)
> > +		return do_abort_sequence(mci, cmd);
>=20
> You could factor the rest of this function out to some dwcmshc_mci_do_se=
nd_cmd()
> and call it from here and do_abort_sequence()=2E
ack

>=20
> > +
> > +	/* Do not wait for CMD_INHIBIT_DAT on stop commands */
> > +	mask =3D SDHCI_CMD_INHIBIT_CMD;
> > +	if (cmd->cmdidx !=3D MMC_CMD_STOP_TRANSMISSION)
> > +		mask |=3D SDHCI_CMD_INHIBIT_DATA;
> > +
> > +	/* Wait for bus idle */
> > +	ret =3D wait_on_timeout(50 * MSECOND,
> > +			      !(sdhci_read16(&host->sdhci, SDHCI_PRESENT_STATE) & mask));
> > +	if (ret) {
> > +		dev_err(host->mci=2Ehw_dev, "SDHCI timeout while waiting for idle\n=
");
> > +		return -ETIMEDOUT;
> > +	}
> > +
> > +	if (data)
> > +		dev_dbg(host->mci=2Ehw_dev, "cmd %d arg %d bcnt %d bsize %d\n",
> > +			cmd->cmdidx, cmd->cmdarg, data->blocks, data->blocksize);
> > +	else
> > +		dev_dbg(host->mci=2Ehw_dev, "cmd %d arg %d\n", cmd->cmdidx, cmd->cm=
darg);
> > +
> > +	sdhci_write32(&host->sdhci, SDHCI_INT_STATUS, ~0);
> > +
> > +	sdhci_setup_data_dma(&host->sdhci, data, &dma);
> > +
> > +	sdhci_write8(&host->sdhci, SDHCI_TIMEOUT_CONTROL, 0xe);
> > +
> > +	sdhci_set_cmd_xfer_mode(&host->sdhci, cmd, data,
> > +				dma =3D=3D SDHCI_NO_DMA ? false : true,
> > +				&command, &xfer);
> > +
> > +	sdhci_write16(&host->sdhci, SDHCI_TRANSFER_MODE, xfer);
> > +
> > +	sdhci_write32(&host->sdhci, SDHCI_ARGUMENT, cmd->cmdarg);
> > +	sdhci_write16(&host->sdhci, SDHCI_COMMAND, command);
> > +
> > +	ret =3D sdhci_wait_for_done(&host->sdhci, SDHCI_INT_CMD_COMPLETE);
> > +	if (ret)
> > +		goto error;
> > +
> > +	sdhci_read_response(&host->sdhci, cmd);
> > +
> > +	ret =3D sdhci_transfer_data(&host->sdhci, data, dma);
> > +error:
> > +	if (ret) {
> > +		sdhci_reset(&host->sdhci, SDHCI_RESET_CMD);
> > +		sdhci_reset(&host->sdhci, SDHCI_RESET_DATA);
> > +	}
> > +
> > +	sdhci_write32(&host->sdhci, SDHCI_INT_STATUS, ~0);
> > +	return ret;
> > +}
> > +
> > +static void dwcmshc_mci_set_ios(struct mci_host *mci, struct mci_ios =
*ios)
> > +{
> > +	struct dwcmshc_host *host =3D priv_from_mci_host(mci);
> > +	u16 val;
> > +
> > +	debug("%s: clock =3D %u, bus-width =3D %d, timing =3D %02x\n", __fun=
c__,
> > +	      ios->clock, ios->bus_width, ios->timing);
>=20
> dev_dbg()
ack

>=20
> > +static int dwcmshc_mci_init(struct mci_host *mci, struct device *dev)
> > +{
> > +	struct dwcmshc_host *host =3D priv_from_mci_host(mci);
> > +	u16 ctrl2;
> > +
> > +	/* reset mshci controller */
> > +	sdhci_write8(&host->sdhci, SDHCI_SOFTWARE_RESET, SDHCI_RESET_ALL);
> > +
> > +	/* wait for reset completion */
> > +	if (wait_on_timeout(100 * MSECOND,
> > +			    (sdhci_read8(&host->sdhci, SDHCI_SOFTWARE_RESET)
> > +			     & SDHCI_RESET_ALL) =3D=3D 0)) {
> > +		dev_err(dev, "SDHCI reset timeout\n");
> > +		return -ETIMEDOUT;
> > +	}
> > +
> > +	sdhci_write16(&host->sdhci, SDHCI_INT_ERROR_ENABLE, ~0);
> > +	sdhci_write16(&host->sdhci, SDHCI_INT_ENABLE, ~0);
> > +	sdhci_write32(&host->sdhci, SDHCI_INT_STATUS, ~0);
> > +	sdhci_write32(&host->sdhci, SDHCI_SIGNAL_ENABLE, ~0);
> > +
> > +	sdhci_enable_v4_mode(&host->sdhci);
> > +
> > +	dev_dbg(host->mci=2Ehw_dev, "host version4: %s\n",
> > +		ctrl2 & SDHCI_CTRL_V4_MODE ? "enabled" : "disabled");
> > +
> > +	return 0;
> > +}
> > +
>=20
> [=2E=2E=2E]
>=20
> > +static int dwcmshc_probe(struct device *dev)
> > +{
> > +	struct dwcmshc_host *host;
> > +	struct resource *iores;
> > +	struct mci_host *mci;
> > +	struct clk *clk;
> > +	int ret;
> > +
> > +	host =3D xzalloc(sizeof(*host));
> > +	mci =3D &host->mci;
> > +
> > +	iores =3D dev_request_mem_resource(dev, 0);
> > +	if (IS_ERR(iores)) {
> > +		ret =3D PTR_ERR(iores);
> > +		goto err_mem_req;
> > +	}
> > +
> > +	clk =3D clk_get(dev, NULL);
> > +	if (IS_ERR(clk)) {
> > +		ret =3D PTR_ERR(clk);
> > +		goto err_clk_get;
> > +	}
> > +	clk_enable(clk);
> > +
> > +	host->sdhci=2Ebase =3D IOMEM(iores->start);
> > +	host->sdhci=2Emci =3D mci;
> > +	host->sdhci=2Emax_clk =3D clk_get_rate(clk);
> > +
> > +	mci->hw_dev =3D dev;
> > +	mci->init =3D dwcmshc_mci_init;
> > +	mci->set_ios =3D dwcmshc_mci_set_ios;
> > +	mci->send_cmd =3D dwcmshc_mci_send_cmd;
> > +	mci->card_present =3D dwcmshc_mci_card_present;
> > +
> > +	mci_of_parse(&host->mci);
> > +
> > +	/* Enable host_version4 */
> > +	sdhci_enable_v4_mode(&host->sdhci);
>=20
> This is also called from dwcmshc_mci_init()=2E Do we need both?
IIRC sdhci_enable_v4_mode needs to be called before sdhci_read_caps which =
is called by sdhci_setup_host (called during probe),
and I think it also needs to be called after the controller is reset=2E

>=20
> Sascha
>=20


