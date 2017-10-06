Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp93.ord1c.emailsrvr.com ([108.166.43.93])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1e0PM0-0002dF-NI
 for barebox@lists.infradead.org; Fri, 06 Oct 2017 09:55:38 +0000
References: <6f652c2e-d971-052d-8e96-3ae7ad984500@solidxs.nl>
 <20171006041153.xgrjynzwido3mjfj@pengutronix.de>
 <4201a4ed-f5ae-2cae-e07c-1e95dbb538df@solidxs.nl>
From: Ian Abbott <abbotti@mev.co.uk>
Message-ID: <4cda0e44-6ac4-8186-2453-0d55919727ef@mev.co.uk>
Date: Fri, 6 Oct 2017 10:55:11 +0100
MIME-Version: 1.0
In-Reply-To: <4201a4ed-f5ae-2cae-e07c-1e95dbb538df@solidxs.nl>
Content-Language: en-GB
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: Kernel device tree gets modified with bootm command when
 CONFIG_OFDEVICE is enabled
To: Marcel Hamer <marcel@solidxs.nl>, Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

On 06/10/17 08:45, Marcel Hamer wrote:
> It kind of sounds like the boot loader is deciding it is smarter than 
> the developer and overriding the settings in the dtb before it passes it 
> to the kernel. I also see it as kind of strange, when you configure a 
> partition table in your dtb for the kernel and once you boot the kernel 
> you get the partition table from the boot loader. Especially since I 
> don't think this is documented anywhere, at least not in the bootm 
> command documentation as far as I know.

There is a magic variable setting to leave the partition entries alone:

   global.of_partition_binding="donttouch"

(Other meaningful values for this variable are "new" and "legacy", which 
controls whether the individual partitions are placed within a 
"partitions" node ("new") or not ("legacy").)

-- 
-=( Ian Abbott @ MEV Ltd.    E-mail: <abbotti@mev.co.uk> )=-
-=(                          Web: http://www.mev.co.uk/  )=-

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
