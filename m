Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.89 #1 (Red Hat Linux))
 id 1elVRe-0004Sk-TQ
 for barebox@lists.infradead.org; Tue, 13 Feb 2018 07:56:08 +0000
Date: Tue, 13 Feb 2018 08:55:52 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20180213075552.hbn2gay3w6p3xhi3@pengutronix.de>
References: <20180208132301.24921-1-aleksander@aleksander.es>
 <20180208132301.24921-8-aleksander@aleksander.es>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20180208132301.24921-8-aleksander@aleksander.es>
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
Subject: Re: [RFC PATCH v2 7/8] ratp: new md and mw commands
To: Aleksander Morgado <aleksander@aleksander.es>
Cc: barebox@lists.infradead.org

On Thu, Feb 08, 2018 at 02:23:00PM +0100, Aleksander Morgado wrote:
> This commit introduces support for running the md and mw commands
> using the binary interface provided by RAPT. This allows clients to

s/RAPT/RATP/

> read and write memory files without needing to do custom string
> parsing on the data returned by the console 'md' and 'mw' operations.
> 
> The request and response messages used for these new operations are
> structured in the same way:
> 
>  * An initial fixed-sized section includes the fixed-sized
>    variables (e.g. integers), as well as the size and offset of the
>    variable-length variables.
> 
>  * After the initial fixed-sized section, the buffer is given, which
>    contains the variable-length variables in the offsets previously
>    defined and with the size previously defined.
> 
> The message also defines separately the offset of the buffer
> w.r.t. the start of the message. The endpoint reading the message will
> use this information to decide where the buffer starts. This allows to
> extend the message format in the future without needing to break the
> message API, as new fields can be appended to the fixed-sized section
> as long as the buffer offset is also updated to report the new
> position of the buffer.
> 
> E.g. testing with ratp-barebox-cli:
> 
>   $ ratp-barebox-cli -t /dev/ttyUSB2 --md "/dev/pic_eeprom_rdu,0x107,5" --timeout 1000
>   Sending md request: read '/dev/pic_eeprom_rdu': 0x0107 (+5 bytes)
>   00:00:00:00:00

It would be good to have to pointer to libratp and ratp-barebox-cli in
Documentation/user/remote-control.rst.

What's your plan for the bbremote tool? It's a bit unfortunate to have
the new features only available in an external tool.

> +static int do_ratp_mem_md(const char *filename,
> +			  loff_t start,
> +			  loff_t size,
> +			  uint8_t *output)
> +{
> +	int r, now, t;
> +	int ret = 0;
> +	int fd;
> +	void *map;
> +
> +	fd = open_and_lseek(filename, O_RWSIZE_1 | O_RDONLY, start);

It would be nice to support different read/write widths. Not every
memory is readable in byte size chunks. But this could be added later
aswell, I just saw that the way you defined the messages allows it to
add additional fields later.

> +	if (fd < 0)
> +		return 1;

Is '1' the right return value here? It goes into a variable named
'errno' which looks wrong.

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
