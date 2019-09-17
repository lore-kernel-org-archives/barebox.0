Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iA9YP-0004NN-5C
 for barebox@lists.infradead.org; Tue, 17 Sep 2019 09:13:46 +0000
Message-ID: <cf32aaa74d87b697e70a0e09635c110fc42a1a8a.camel@pengutronix.de>
From: Lucas Stach <l.stach@pengutronix.de>
Date: Tue, 17 Sep 2019 11:13:43 +0200
In-Reply-To: <20190917084810.24608-1-r.czerwinski@pengutronix.de>
References: <20190917084810.24608-1-r.czerwinski@pengutronix.de>
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
Subject: Re: [PATCH] Doc: i.MX: Document image structure for i.MX
To: Rouven Czerwinski <r.czerwinski@pengutronix.de>, barebox@lists.infradead.org

On Di, 2019-09-17 at 10:48 +0200, Rouven Czerwinski wrote:
> Document the image and load structure for i.MX6 and i.MX8MQ.
> 
> Signed-off-by: Rouven Czerwinski <r.czerwinski@pengutronix.de>
> ---
>  Documentation/boards/imx.rst | 69 ++++++++++++++++++++++++++++++++++++
>  1 file changed, 69 insertions(+)
> 
> diff --git a/Documentation/boards/imx.rst b/Documentation/boards/imx.rst
> index 71cc6bb09a..7110492eba 100644
> --- a/Documentation/boards/imx.rst
> +++ b/Documentation/boards/imx.rst
> @@ -142,6 +142,75 @@ It must be included in the board's flash header:
>  
>  Analogous to HABv4 options and a template exist for HABv3.
>  
> +Secure Boot on i.MX6
> +--------------------
> +
> +The secure boot process on i.MX6 consist of the following image constellation::
> +
> +    0x0 +---------------------------------+
> +        | Barebox Header                  |
> +  0x400 +---------------------------------+       -
> +        | i.MX IVT Header                 |       |
> +        | Boot Data                       +--+    |
> +        | CSF Pointer                     +--|-+  | Signed Area
> +        +---------------------------------+  | |  |
> +        | Device Configuration Data (DCD) |  | |  |
> + 0x1000 +---------------------------------+  | |  |
> +        | Barebox Prebootloader (PBL)     |<-+ |  |
> +        +---------------------------------+    |  |
> +        | Piggydata (Main Barebox Binary) |    |  |
> +        +---------------------------------+    |  -
> +        | Command Sequence File (CSF)     |<---+
> +        +---------------------------------+
> +
> +Here the Command Sequence File signs the complete Header, PBL and piggy data
> +file. This ensures that the whole barebox binary is authenticated. This is
> +possible since the DDR RAM is configured using the DCD and the whole DDR memory
> +area can be used to load data onto the device for authentication.

That's not a universally true statement for all i.MX6 boards. There are
quite a few that also do the two step loading with PBL in SRAM and DRAM
setup from the PBL. But I'm not sure if and how we want to reflect this
in the documentation.

> +The boot ROM loads the CSF area and barebox into memory and uses the CSF to
> +verify the complete barebox binary.
> +
> +Secure Boot on i.MX8MQ
> +----------------------
> +
> +For i.MX8MQ the image has the following design::
> +
> +    0x0 +---------------------------------+
> +        | Barebox Header                  |
> +        +---------------------------------+
> +        | i.MX IVT Header                 |
> +        | HDMI Firmware (Signed by NXP)   |
> +        +---------------------------------+        -
> +        | i.MX IVT Header                 |        |
> +        | Boot Data                       +--+     |
> +        | CSF Pointer                     +--|-+   |
> +        +---------------------------------+  | |   | Signed Area
> +        | Device Configuration Data (DCD) |  | |   |
> +        +---------------------------------+  | |   |
> +        | Barebox Prebootloader (PBL)     |<-+ |   |
> +        | Piggydata Hash (SHA256)         +----|-+ |
> +        +---------------------------------+    | | -
> +        | Command Sequence File (CSF)     |<---+ |
> +        +---------------------------------+      | -
> +        | Piggydata (Main Barebox Binary) |<-----+ | Hashed Area
> +        +---------------------------------+        -
> +
> +In contrast to i.MX6, for the i.MX8MQ the piggydata can not be signed together
> +with the PBL binary. The DDR memory is initialized during the start of the PBL,
> +previous to this no access to the DDR memory is possible. Since the Tightly
> +Coupled Memory used for early startup on i.MX8MQ has only 256Kib, the whole
> +barebox can't be loaded and verified at once, since the complete barebox with
> +firmware has a size of ~500Kib.

If experience tells us anything, then this value will probably grow
quite a bit in the future. ;)

> +
> +The bootrom loads the HDMI firmware unconditionally, since it is signed by NXP.
> +Afterwards the Prebootloader (PBL) is loaded into SRAM and the bootrom proceeds
> +to verify the PBL according to the Command Sequence File (CSF). The verified
> +PBL initializes the ARM Trusted Firmware (TF-A) and DDR RAM. It subsequently
> +loads the piggydata from the SD card and calculates the sha256sum of the
                                  ^
"boot media" or similar, as Barebox can also be loaded from eMMC.

> +piggydata. This is compared to the sha256sum built into the PBL during compile
> +time, the PBL will only continue to boot if the sha256sum matches the builtin
> +sha256sum.
> +
>  Using GPT on i.MX
>  ^^^^^^^^^^^^^^^^^
>  


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
