Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdB0R-0005GP-UD
 for barebox@lists.infradead.org; Mon, 25 May 2020 11:10:57 +0000
Date: Mon, 25 May 2020 13:10:53 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20200525111053.GR11869@pengutronix.de>
References: <20200523005156.148504-1-dgienda125@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200523005156.148504-1-dgienda125@gmail.com>
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
Subject: Re: [PATCH v2] password: Fix warning with empty default password
To: David Dgien <dgienda125@gmail.com>
Cc: barebox@lists.infradead.org

On Fri, May 22, 2020 at 08:51:56PM -0400, David Dgien wrote:
> When CONFIG_PASSWORD_DEFAULT is unset, the default_passwd buffer is set
> to the empty string. The read_default_passwd() function wants to read at
> least two characters from that buffer, causing GCC to generate an array
> bounds warning:
> 
> barebox/common/password.c: In function 'login':
> barebox/common/password.c:173:5: warning: array subscript [1, 2147483647] is outside array bounds of 'const char[1]' [-Warray-bounds]
> In file included from barebox/common/password.c:30:
> include/generated/passwd.h:1:19: note: while referencing 'default_passwd'
> 
> Add an ARRAY_SIZE check to default_passwd so that the loop is optimized
> away and the warning is no longer generated. Since the
> read_default_passwd() function is only called when default_passwd is not
> the empty string, this is not a functional change.
> 
> Signed-off-by: David Dgien <dgienda125@gmail.com>
> ---
> Changes since v1:
>   - Added warning output to commit message
>   - Rework fix in read_default_passwd() instead of hacking with the makefile
> 
>  common/password.c | 3 +++
>  1 file changed, 3 insertions(+)

Applied, thanks

Sascha


-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
