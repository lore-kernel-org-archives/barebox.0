Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.free-electrons.com ([88.190.12.23])
	by canuck.infradead.org with esmtp (Exim 4.72 #1 (Red Hat Linux))
	id 1Pa8RU-0002zD-Eg
	for barebox@lists.infradead.org; Tue, 04 Jan 2011 15:05:00 +0000
Message-ID: <4D23370A.6040203@free-electrons.com>
Date: Tue, 04 Jan 2011 16:04:42 +0100
From: Gregory CLEMENT <gregory.clement@free-electrons.com>
MIME-Version: 1.0
References: <4D233027.9030701@free-electrons.com>
	<201101041546.53030.jbe@pengutronix.de>
In-Reply-To: <201101041546.53030.jbe@pengutronix.de>
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
Subject: Re: [PATCH 1/4] ARM STM/i.MX: Allocate memory for framebuffer during
	probe
To: Juergen Beisert <jbe@pengutronix.de>
Cc: barebox@lists.infradead.org

On 01/04/2011 03:46 PM, Juergen Beisert wrote:
> Gregory CLEMENT wrote:
>> With current code when the framebuffer is register, screen_base is not
>> set yet. So when we want to access framebuffer from mmap we get a
>> pointer to 0x0 instead of getting the pointer to the framebuffer
>> address. This patch fix this bug by allocating memory for framebuffer
>> during probe just before registering framebuffer driver.
> 
> Are you sure? See below

It was the value I get at runtime at least.

> 
>> Signed-off-by: Gregory CLEMENT <gregory.clement@free-electrons.com>
[...]
> 
> This probe function sets up the default mode. And register_framebuffer() 
> itself calls stmfb_activate_var() which calls stmfb_memory_mmgt(). So, when 
> the call to register_framebuffer() returns the 'screen_base' should no longer 
> be NULL.

But in register_framebuffer first map_base get its value from screen_base and
it is only after that fb_activate_var is called. And the problem is that mmap
will not get screen_base but map_base and this one is set too early.
Extract from  register_framebuffer() in fb.c:

	info->cdev.dev->map_base = (unsigned long)info->screen_base;
map_base get its value here ------^
	info->cdev.dev->size = info->cdev.size;

	dev = &info->dev;
	dev->priv = info;
	dev->id = id;

	sprintf(dev->name, "fb");

	register_device(&info->dev);
	dev_add_param(dev, "enable", fb_enable_set, NULL, 0);
	dev_set_param(dev, "enable", "0");

	if (info->num_modes && (info->mode_list != NULL) &&
			(info->fbops->fb_activate_var != NULL)) {
		dev_add_param(dev, "mode_name", fb_setup_mode, NULL, 0);
		dev_set_param(dev, "mode_name", info->mode_list[0].name);
fb_activate_var is called here ------------------------^


This code is new for me, maybe I missed something.

> 
> jbe
> 


-- 
Gregory Clement, Free Electrons
Kernel, drivers, real-time and embedded Linux
development, consulting, training and support.
http://free-electrons.com

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
