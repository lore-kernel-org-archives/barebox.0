Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1bmceO-0004zd-T2
 for barebox@lists.infradead.org; Wed, 21 Sep 2016 08:13:07 +0000
Date: Wed, 21 Sep 2016 10:12:42 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20160921081242.j7rtr4yu6ofjnjgf@pengutronix.de>
References: <20160920141301.10187-1-antonynpavlov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20160920141301.10187-1-antonynpavlov@gmail.com>
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
Subject: Re: [PATCH] Documentation: imd: fix sphinx warning
To: Antony Pavlov <antonynpavlov@gmail.com>
Cc: barebox@lists.infradead.org

On Tue, Sep 20, 2016 at 05:13:01PM +0300, Antony Pavlov wrote:
> The patch fixes this sphinx warnings:
> 
>     barebox/Documentation/user/imd.rst:27: WARNING: Could not lex literal_block as "c". Highlighting skipped.
> 
> Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
> Cc: Sascha Hauer <s.hauer@pengutronix.de>
> ---
>  Documentation/user/imd.rst | 8 ++++++--
>  1 file changed, 6 insertions(+), 2 deletions(-)

Applied, thanks

Sascha

> 
> diff --git a/Documentation/user/imd.rst b/Documentation/user/imd.rst
> index e0251d6..ce1b90c 100644
> --- a/Documentation/user/imd.rst
> +++ b/Documentation/user/imd.rst
> @@ -22,7 +22,9 @@ The informations can be extracted with the ``bareboximd`` tool which lives under
>  ``scripts/`` in the barebox sourcecode. If enabled it is compiled for the compile
>  host and also for the target architecture. barebox itself has the :ref:`command_imd`
>  command to extract the informations. Here is an example output of the tool called
> -without additional options::
> +without additional options:
> +
> +.. code-block:: none
>  
>    # imd barebox-phytec-pbab01dl-1gib.img
>    build: #890 Wed Jul 30 16:15:24 CEST 2014
> @@ -31,7 +33,9 @@ without additional options::
>    of_compatible: phytec,imx6x-pbab01 phytec,imx6dl-pfla02 fsl,imx6dl
>    model: Phytec phyFLEX-i.MX6 Duallite Carrier-Board
>  
> -Single informations can be extracted with the ``-t <type>`` option::
> +Single informations can be extracted with the ``-t <type>`` option:
> +
> +.. code-block:: none
>  
>    # imd barebox-phytec-pbab01dl-1gib.img -t release
>    2014.07.0-00167-ge6632a9-dirty
> -- 
> 2.9.3
> 
> 

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
