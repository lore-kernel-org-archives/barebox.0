Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hAvvO-0005OW-CG
 for barebox@lists.infradead.org; Mon, 01 Apr 2019 12:20:28 +0000
Date: Mon, 1 Apr 2019 14:20:22 +0200
From: Roland Hieber <rhi@pengutronix.de>
Message-ID: <20190401122022.dxalht4gjgoo7uoa@pengutronix.de>
References: <20190401101822.7392-1-a.fatoum@pengutronix.de>
 <20190401101822.7392-2-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190401101822.7392-2-a.fatoum@pengutronix.de>
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
Subject: Re: [PATCH v3 01/15] LICENSES: add BSD-1-Clause license
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org, sam@ravnborg.org

On Mon, Apr 01, 2019 at 12:18:09PM +0200, Ahmad Fatoum wrote:
> Incoming sama5d3 bootstrap code has been ported from the at91bootstrap
> project and is licensed under a 1-clause BSD license. To remove
> boilerplate legal text there, place the license at a fixed location
> and only note SPDX-License-Identifier and Copyright in the source files.
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  LICENSES/preferred/BSD-1-Clause | 15 +++++++++++++++
>  1 file changed, 15 insertions(+)
>  create mode 100644 LICENSES/preferred/BSD-1-Clause
> 
> diff --git a/LICENSES/preferred/BSD-1-Clause b/LICENSES/preferred/BSD-1-Clause
> new file mode 100644
> index 000000000000..f80acdf3b15f
> --- /dev/null
> +++ b/LICENSES/preferred/BSD-1-Clause
> @@ -0,0 +1,15 @@
> +Valid-License-Identifier: BSD-1-Clause
> +SPDX-URL: https://spdx.org/licenses/BSD-1-Clause.html
> +Usage-Guide:
> +  To use the BSD 1-clause License put the following SPDX tag/value pair
> +  into a comment according to the placement guidelines in the licensing
> +  rules documentation:
> +    SPDX-License-Identifier: BSD-1-Clause
> +License-Text:
> +
> +Copyright (c) <year> <owner> All rights reserved.
> +
> +Redistribution and use in source and binary forms, with or without modification, are permitted provided that the following conditions are met:
> +
> +1. Redistributions of source code must retain the above copyright notice, this list of conditions and the following disclaimer.
> +THIS SOFTWARE IS PROVIDED BY Berkeley Software Design, Inc. "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL Berkeley Software Design, Inc. BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.

I would replace "Berkeley Software Design, Inc." with "the copyright
holder" here. In the link given in the SPDX-URL field these parts are
marked as placeholders in red text, which does not transfer well over to
plain text. :)

I would also hard-line-wrap the text to 80 characters to make it better
readable, but I guess that is a matter of personal preference.

 - Roland

-- 
Roland Hieber                     | r.hieber@pengutronix.de     |
Pengutronix e.K.                  | https://www.pengutronix.de/ |
Peiner Str. 6-8, 31137 Hildesheim | Phone: +49-5121-206917-5086 |
Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
