Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1QEIxU-0006QG-6g
	for barebox@lists.infradead.org; Mon, 25 Apr 2011 10:24:05 +0000
Date: Mon, 25 Apr 2011 12:23:55 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20110425102355.GD14770@pengutronix.de>
References: <BANLkTik_geZ4hpcXTdN81DEgcOeqRZT8UA@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <BANLkTik_geZ4hpcXTdN81DEgcOeqRZT8UA@mail.gmail.com>
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
Subject: Re: Sandbox Segfaults
To: MJ <mjainp@gmail.com>
Cc: barebox@lists.infradead.org

Hi,

On Fri, Apr 22, 2011 at 09:13:39PM +0530, MJ wrote:
> Hi,
> 
> I was trying sandbox for x86 host machine from latest git repo of
> barebox (master branch) and it segfaults when ran with following
> command line arguments,
> 
> ./barebox -e env.bin -i cramfs.bin

Please try again with the latest master branch. I fixed this issue with
the following:


commit fcad2ff58b617340230dae8cfc1e23ebc6baf108
Author: Sascha Hauer <s.hauer@pengutronix.de>
Date:   Mon Apr 25 11:18:49 2011 +0200

    sandbox: Fix another uninitialized dev->id case
    
    Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>

diff --git a/arch/sandbox/board/hostfile.c b/arch/sandbox/board/hostfile.c
index 38a52a8..e460d0a 100644
--- a/arch/sandbox/board/hostfile.c
+++ b/arch/sandbox/board/hostfile.c
@@ -109,6 +109,7 @@ int barebox_register_filedev(struct hf_platform_data *hf)
 
 	strcpy(dev->name, "hostfile");
 	dev->size = hf->size;
+	dev->id = -1;
 	dev->map_base = hf->map_base;
 
 	return register_device(dev);

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
