Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hiBdI-0008GY-7Z
 for barebox@lists.infradead.org; Tue, 02 Jul 2019 05:47:14 +0000
Message-ID: <6c0e12c60b30d6f7feaf06f351976ee8621d0e1c.camel@pengutronix.de>
From: Rouven Czerwinski <r.czerwinski@pengutronix.de>
Date: Tue, 02 Jul 2019 07:47:06 +0200
In-Reply-To: <20190626075100.jfgm4dpcplmur6tz@pengutronix.de>
References: <cover.a507585555be94a0fb8946fdfd851a30ab8b296f.1561525118.git-series.r.czerwinski@pengutronix.de>
 <0a5e4f2477dbd296f8bb6fe49b3db882b0486cc1.1561525118.git-series.r.czerwinski@pengutronix.de>
 <20190626075100.jfgm4dpcplmur6tz@pengutronix.de>
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
Subject: Re: [PATCH 07/13] scripts: imx: support signing for i.MX8MQ
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

On Wed, 2019-06-26 at 09:51 +0200, Sascha Hauer wrote:
> On Wed, Jun 26, 2019 at 06:58:48AM +0200, Rouven Czerwinski wrote:
> >  quiet_cmd_kwb_image = KWB     $@
> >        cmd_kwb_image = scripts/kwbimage -p $< $(OPTS_$(@F)) -o $@
> > diff --git a/scripts/imx/imx-image.c b/scripts/imx/imx-image.c
> > index a7f1421..7169bf7 100644
> > --- a/scripts/imx/imx-image.c
> > +++ b/scripts/imx/imx-image.c
> > @@ -315,6 +315,17 @@ static size_t add_header_v2(const struct
> > config_data *data, void *buf)
> >  	uint32_t loadaddr = data->image_load_addr;
> >  	uint32_t imagesize = data->load_size;
> >  
> > +	if (data->cpu_type == IMX_CPU_IMX8MQ) {
> > +		/*
> > +		 * If singing is enabled on IMX8MQ, the linker script
> > reserves a
> 
> Make sure singing is not enabled without a speaker connected ;)
> 
> > +		 * CSF_LEN aligned section directly after the PBL,
> > +		 * only load and sign this area of the data.
> > +		 */
> > +		imagesize = roundup(data->pbl_code_size + HEADER_LEN,
> > 0x4);
> > +		if (data->csf)
> > +			imagesize = roundup(imagesize, 0x1000);
> > +	}
> > +
> >  	buf += offset;
> >  	hdr = buf;
> >  
> > @@ -333,14 +344,22 @@ static size_t add_header_v2(const struct
> > config_data *data, void *buf)
> >  	hdr->self		= loadaddr + offset;
> >  
> >  	hdr->boot_data.start	= loadaddr;
> > -	if (data->max_load_size && imagesize > data->max_load_size)
> > +	if (!data->csf && data->max_load_size
> > +	    && imagesize > data->max_load_size)
> >  		hdr->boot_data.size	= data->max_load_size;
> >  	else
> >  		hdr->boot_data.size	= imagesize;
> >  
> > -	if (data->csf) {
> > +	if (data->sign_image) {
> >  		hdr->csf = loadaddr + imagesize;
> >  		hdr->boot_data.size += CSF_LEN;
> > +	} else if (data->cpu_type == IMX_CPU_IMX8MQ && data->csf) {
> > +		/*
> > +		 * For i.MX8 the CSF space is added via the linker
> > script, so
> > +		 * the CSF length needs to be added if HABV4 is enabled
> > but
> > +		 * signing is not.
> > +		 */
> > +		hdr->boot_data.size += CSF_LEN;
> >  	}
> >  
> >  	hdr->dcd_header.tag	= TAG_DCD_HEADER;
> > @@ -546,6 +565,7 @@ static int hab_sign(struct config_data *data)
> >  	char *cst;
> >  	void *buf;
> >  	size_t csf_space = CSF_LEN;
> > +	unsigned int offset = 0;
> >  
> >  	cst = getenv("CST");
> >  	if (!cst)
> > @@ -620,6 +640,9 @@ static int hab_sign(struct config_data *data)
> >  		return -errno;
> >  	}
> >  
> > +	printf("--- CSF START ---\n");
> > +	printf("%s\n", data->csf);
> > +	printf("--- CSF END ---\n");
> >  	fwrite(data->csf, 1, strlen(data->csf) + 1, f);
> >  
> >  	pclose(f);
> > @@ -672,13 +695,36 @@ static int hab_sign(struct config_data *data)
> >  		return -errno;
> >  	}
> >  
> > -	outfd = open(data->outfile, O_WRONLY | O_APPEND);
> > +	/*
> > +	 * For i.MX8, write into the reserved CSF section
> > +	 */
> > +	if (data->cpu_type == IMX_CPU_IMX8MQ)
> > +		outfd = open(data->outfile, O_WRONLY);
> > +	else
> > +		outfd = open(data->outfile, O_WRONLY | O_APPEND);
> > +
> >  	if (outfd < 0) {
> >  		fprintf(stderr, "Cannot open %s for writing: %s\n",
> > data->outfile,
> >  			strerror(errno));
> >  		exit(1);
> >  	}
> >  
> > +	if (data->cpu_type == IMX_CPU_IMX8MQ) {
> > +		/*
> > +		 * For i.MX8 insert the CSF data into the reserved CSF
> > area
> > +		 * right behind the PBL
> > +		 */
> > +		offset = roundup(data->header_gap + data->pbl_code_size 
> > +
> > +				 HEADER_LEN, 0x1000);
> > +		if (data->signed_hdmi_firmware_file)
> > +			offset += PLUGIN_HDMI_SIZE;
> > +
> > +		if (lseek(outfd, offset, SEEK_SET) < 0) {
> > +			perror("lseek");
> > +			exit(1);
> > +		}
> > +	}
> > +
> >  	ret = xwrite(outfd, buf, csf_space);
> >  	if (ret < 0) {
> >  		fprintf(stderr, "write failed: %s\n", strerror(errno));
> > @@ -743,7 +789,6 @@ int main(int argc, char *argv[])
> >  	int outfd;
> >  	int dcd_only = 0;
> >  	int now = 0;
> > -	int sign_image = 0;
> >  	int i, header_copies;
> >  	int add_barebox_header;
> >  	uint32_t barebox_image_size = 0;
> > @@ -760,7 +805,7 @@ int main(int argc, char *argv[])
> >  
> >  	prgname = argv[0];
> >  
> > -	while ((opt = getopt(argc, argv, "c:hf:o:bduse")) != -1) {
> > +	while ((opt = getopt(argc, argv, "c:hf:o:p:bduse")) != -1) {
> 
> I'm missing the hunk for the usage() function ;)
> 
> >  		switch (opt) {
> >  		case 'c':
> >  			configfile = optarg;
> > @@ -771,6 +816,9 @@ int main(int argc, char *argv[])
> >  		case 'o':
> >  			data.outfile = optarg;
> >  			break;
> > +		case 'p':
> > +			data.pbl_code_size = strtoul(optarg, NULL, 0);
> > +			break;
> >  		case 'b':
> >  			add_barebox_header = 1;
> >  			break;
> > @@ -778,7 +826,7 @@ int main(int argc, char *argv[])
> >  			dcd_only = 1;
> >  			break;
> >  		case 's':
> > -			sign_image = 1;
> > +			data.sign_image = 1;
> 
> Storing sign_image in struct config_data could be an extra patch to
> make
> this one a bit smaller.
> 
> >  			break;
> >  		case 'u':
> >  			create_usb_image = 1;
> > @@ -832,14 +880,12 @@ int main(int argc, char *argv[])
> >  	if (ret)
> >  		exit(1);
> >  
> > -	if (data.max_load_size && (sign_image || data.encrypt_image)) {
> > +	if (data.max_load_size && (data.encrypt_image || data.csf)
> > +	    && data.cpu_type != IMX_CPU_IMX8MQ) {
> >  		fprintf(stderr, "Specifying max_load_size is
> > incompatible with HAB signing/encrypting\n");
> >  		exit(1);
> >  	}
> >  
> > -	if (!sign_image)
> > -		data.csf = NULL;
> 
> Why is this no longer necessary with this patch? Was it unnecessary
> before aswell? Then this might be worth an extra patch.

No. I'm now using data->csf and data->sign_image to distinguish the
case where HABv4 is enabled, but signing is not. Since the CSF space is
always added if HABv4 is enabled, imx-image needs to correctly set
boot_data.size, otherwise the piggy_data can't be correctly located
later.
I'll split this out and put the information into the commit message.

Greetings,
Rouven Czerwinski
-- 
Pengutronix e.K.                           |            		 |
Industrial Linux Solutions                 | https://www.pengutronix.de/ |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
