Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 98.mail-out.ovh.net ([91.121.185.91])
	by canuck.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
	id 1QcDwa-0007Fo-CH
	for barebox@lists.infradead.org; Thu, 30 Jun 2011 09:53:57 +0000
Received: from mail31.ha.ovh.net (b7.ovh.net [213.186.33.57])
	by 98.mail-out.ovh.net (Postfix) with SMTP id 55B164B2375
	for <barebox@lists.infradead.org>;
	Thu, 30 Jun 2011 11:53:31 +0200 (CEST)
Date: Thu, 30 Jun 2011 11:38:46 +0200
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20110630093846.GQ17355@game.jcrosoft.org>
References: <1309317858-11861-1-git-send-email-antonynpavlov@gmail.com>
	<1309317858-11861-3-git-send-email-antonynpavlov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1309317858-11861-3-git-send-email-antonynpavlov@gmail.com>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH 3/4] MIPS: add qemu malta board support to barebox
To: Antony Pavlov <antonynpavlov@gmail.com>
Cc: barebox@lists.infradead.org

> + * GNU General Public License for more details.
> + *
> + * You should have received a copy of the GNU General Public License
> + * along with this program; if not, write to the Free Software
> + * Foundation, Inc., 59 Temple Place, Suite 330, Boston,
> + * MA 02111-1307 USA
> + *
> + */
> +
> +#include <common.h>
> +#include <types.h>
> +#include <driver.h>
> +#include <init.h>
> +#include <ns16550.h>
> +#include <mach/hardware.h>
> +#include <asm/io.h>
> +
> +/** to work with the 8250 UART driver implementation we need this function */
> +static unsigned int malta_uart_read(unsigned long base, unsigned char reg_idx)
> +{
> +	return readb((char *)base + reg_idx);
> +}
> +
> +/** to work with the 8250 UART driver implementation we need this function */
> +static void malta_uart_write(unsigned int val, unsigned long base, unsigned char reg_idx)
> +{
> +	writeb(val, (char *)base + reg_idx);
> +}
> +
> +static struct NS16550_plat serial_plat = {
> +       .clock = 1843200, /* no matter */
I check the kernel and they use 3686400

furture more there is no qemu-malta as the malta is a real hw
emulation even on qemu

Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
