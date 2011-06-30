Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wy0-f177.google.com ([74.125.82.177])
	by casper.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
	id 1QcEcT-0006bR-Ar
	for barebox@lists.infradead.org; Thu, 30 Jun 2011 10:37:14 +0000
Received: by wyf23 with SMTP id 23so1796876wyf.36
	for <barebox@lists.infradead.org>; Thu, 30 Jun 2011 03:34:57 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <20110630093846.GQ17355@game.jcrosoft.org>
References: <1309317858-11861-1-git-send-email-antonynpavlov@gmail.com>
	<1309317858-11861-3-git-send-email-antonynpavlov@gmail.com>
	<20110630093846.GQ17355@game.jcrosoft.org>
Date: Thu, 30 Jun 2011 14:34:56 +0400
Message-ID: <BANLkTinq1ZmPMiGYPYVrj0zkeHg9PyZ4+g@mail.gmail.com>
From: Antony Pavlov <antonynpavlov@gmail.com>
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
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

On 30/06/2011, Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com> wrote:
>> + * GNU General Public License for more details.
>> + *
>> + * You should have received a copy of the GNU General Public License
>> + * along with this program; if not, write to the Free Software
>> + * Foundation, Inc., 59 Temple Place, Suite 330, Boston,
>> + * MA 02111-1307 USA
>> + *
>> + */
>> +
>> +#include <common.h>
>> +#include <types.h>
>> +#include <driver.h>
>> +#include <init.h>
>> +#include <ns16550.h>
>> +#include <mach/hardware.h>
>> +#include <asm/io.h>
>> +
>> +/** to work with the 8250 UART driver implementation we need this
>> function */
>> +static unsigned int malta_uart_read(unsigned long base, unsigned char
>> reg_idx)
>> +{
>> +	return readb((char *)base + reg_idx);
>> +}
>> +
>> +/** to work with the 8250 UART driver implementation we need this
>> function */
>> +static void malta_uart_write(unsigned int val, unsigned long base,
>> unsigned char reg_idx)
>> +{
>> +	writeb(val, (char *)base + reg_idx);
>> +}
>> +
>> +static struct NS16550_plat serial_plat = {
>> +       .clock = 1843200, /* no matter */
> I check the kernel and they use 3686400
>
> furture more there is no qemu-malta as the malta is a real hw
> emulation even on qemu

Honesty is the best policy.

I have no real malta board, but I have qemu-malta pseudo-board.
I can test barebox on the emulator, but I can't give a warranty that
barebox will work on real malta board.

The MIPS Malta is a reconfigurable device
(http://www.linux-mips.org/wiki/Mips_Malta).
It can be used with very different core cards.

So, I have separated qemu-malta barebox board directory, and nobody
can imagine to run it on real malta board.
But if I have malta barebox board directory, anybody can be misled.

-- 
Best regards,
  Antony Pavlov

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
